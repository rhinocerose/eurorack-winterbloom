import time
import statistics
import os.path
import io

import pyvisa
from wintertools import multimeter, circuitpython, fs

USB_DEVICE_ID = "239A:8062"
MILIVOLTS_PER_CODE = 13 / (2 ** 16) * 1000


class Sol:
    DAC_SETTLING_TIME = 0.1

    def __init__(self, verbose):
        self.verbose = verbose
        self._connect()

    def _connect(self):
        self.port = circuitpython.serial_connect(USB_DEVICE_ID)

    def reset(self):
        print("Waiting for Sol to reset...")
        for n in range(10):
            line = self.port.readline().decode("utf-8").strip()
            if self.verbose:
                print("Sol: ", line)
            if line == "ready":
                break

    def call(self, expr):
        self.port.write(f"{expr}\r\n".encode("utf-8"))
        self.port.flush()
        output = ""
        while True:
            line = self.port.readline().decode("utf-8").strip()
            if self.verbose:
                print("Sol: ", line)
            if line == "done":
                break
            if line.startswith("Traceback"):
                error = self.port.read(size=500).decode("utf-8")
                raise RuntimeError(f"Error while interacting with Sol: {error}")
            if line.startswith("NameError"):  # The repl didn't pick up the command.
                error = self.port.read(size=500).decode("utf-8")
                return call(self, expr)

            if not line.startswith(expr):
                output += line

        return output

    def set_dac(self, channel, dac_code):
        self.call(f"set_dac('{channel}', {dac_code})")
        time.sleep(self.DAC_SETTLING_TIME)

    def set_voltage(self, channel, voltage):
        self.call(f"set_voltage('{channel}', {voltage})")
        time.sleep(self.DAC_SETTLING_TIME)

    def set_calibration(self, channel, calibration_values):
        self.call(f"set_calibration('{channel}', {calibration_values})")

    def get_cpu_id(self):
        return self.call("get_cpu_id()")

    def write_calibration_to_nvm(self, calibration_data):
        self.call(f'write_calibration_to_nvm("""{calibration_data}""")')


def find_circuitpython_drive():
    return fs.find_drive_by_name("CIRCUITPY")


def copy_calibration_script(circuitpython_drive):
    print(f"Copying calibration script to {circuitpython_drive}")
    if not os.path.exists(os.path.join(circuitpython_drive, "code-bak.py")):
        fs.copyfile(
            os.path.join(circuitpython_drive, "code.py"),
            os.path.join(circuitpython_drive, "code-bak.py"),
        )
    fs.copyfile(
        os.path.join(os.path.dirname(__file__), "calibration_cpy_code.py"),
        os.path.join(circuitpython_drive, "code.py"),
    )


def restore_code_py(circuitpython_drive):
    fs.copyfile(
        os.path.join(circuitpython_drive, "code-bak.py"),
        os.path.join(circuitpython_drive, "code.py"),
    )
    os.unlink(os.path.join(circuitpython_drive, "code-bak.py"))


def generate_calibration_file(channel_calibrations):
    buf = io.StringIO()
    buf.write("calibration = {")
    for channel, calibration in channel_calibrations.items():
        buf.write(f'"{channel}": {calibration},\n')
    buf.write("}\n")
    return buf.getvalue()


def main(verbose=False):
    circuitpython_drive = find_circuitpython_drive()
    resource_manager = pyvisa.ResourceManager("@ivi")
    meter = multimeter.Multimeter(resource_manager)
    sol = Sol(verbose=verbose)

    print("Copying calibration script...")
    copy_calibration_script(circuitpython_drive)
    time.sleep(3)  # Wait a few second for circuitpython to maybe reload.
    sol.reset()
    cpu_id = sol.get_cpu_id()

    print(f"Sol CPU ID: {cpu_id}")

    channel_calibrations = {}
    channel_voltages = {}

    try:
        for channel in ("a", "b", "c", "d"):
            print(f"========= Channel {channel} =========")
            print(f"Connect to channel {channel}...")

            sol.set_dac(channel, 0)
            for n in range(100):
                if meter.read_voltage_fast() < -4.8:
                    break
                time.sleep(0.1)
            else:
                raise RuntimeError("Channel connection failed!")

            # Sleep another second to account for bouncing
            time.sleep(1)

            calibration_values = {}
            channel_voltages[channel] = {}

            for step in range(16):
                dac_code = int((2 ** 16 - 1) * step / 15)
                sol.set_dac(channel, dac_code)
                voltage = meter.read_voltage()
                calibration_values[voltage] = dac_code
                print(f"DAC code: {dac_code}, Voltage: {voltage}")

            sol.set_calibration(channel, calibration_values)
            channel_calibrations[channel] = calibration_values

            for desired_voltage in range(-5, 9):
                sol.set_voltage(channel, desired_voltage)
                measured_voltage = meter.read_voltage()
                channel_voltages[channel][desired_voltage] = measured_voltage
                print(
                    f"Desired voltage: {desired_voltage}, Measured voltage: {measured_voltage}"
                )

        calibration_file_contents = generate_calibration_file(channel_calibrations)
        sol.write_calibration_to_nvm(calibration_file_contents)

    finally:
        meter.close()

    print("========= Stats =========")
    for channel, voltages in channel_voltages.items():
        if not voltages:
            continue

        print(f"Channel {channel}:")
        differences = [
            abs(desired - measured) for desired, measured in voltages.items()
        ]
        avg = statistics.mean(differences) * 1000
        dev = statistics.stdev(differences) * 1000
        worst = max(differences) * 1000
        best = min(differences) * 1000
        print(f"Average: {avg:.3f} mV ({avg / MILIVOLTS_PER_CODE:.0f} lsb)")
        print(f"Std. dev: {dev:.3f} mV ({dev / MILIVOLTS_PER_CODE:.0f} lsb)")
        print(f"Worst: {worst:.3f} mV ({worst / MILIVOLTS_PER_CODE:.0f} lsb)")
        print(f"Best: {best:.3f} mV ({best / MILIVOLTS_PER_CODE:.0f} lsb)")

    print(f"Saving calibration to calibrations/{cpu_id} and {circuitpython_drive}")

    calibration_file_path = os.path.join("calibrations", f"{cpu_id}.py")

    with open(calibration_file_path, "w") as fh:
        fh.write("# This is generated by the factory when assembling your\n")
        fh.write("# device. Do not remove or change this.\n\n")
        fh.write(calibration_file_contents)
        fh.flush()

    fs.copyfile(
        calibration_file_path, os.path.join(circuitpython_drive, "calibration.py")
    )

    restore_code_py(circuitpython_drive)

    fs.unmount(circuitpython_drive)

    print("Done.")


if __name__ == "__main__":
    main()
