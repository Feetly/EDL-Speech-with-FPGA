import serial
import time

serial_port = 'COM4'
baud_rate = 9600 # In arduino, Serial.begin(baud_rate)
write_to_file_path = "output.txt"

output_file = open(write_to_file_path, "w+")
ser = serial.Serial(serial_port, baud_rate)

in_time = time.time()
eps = 2

while abs(time.time() - in_time) < eps:
    line = ser.readline()
    line = line.decode("utf-8")
    print(line)
    output_file.write(line)

output_file.close()
ser.close()

print("All Successfuly")
input()
