/*
 * Refrence:
 * https://www.arduino.cc/en/Tutorial/DueSimpleWaveformGenerator
 * https://www.youtube.com/watch?v=ojkUaCSFM30
 * https://forum.arduino.cc/t/can-arduino-uno-generate-sine-wave/428985/51
 */

int analogInPin = A0;
int sensorValue = 0;

void setup() 
{
  Serial.begin(9600);
  pinMode(analogInPin, INPUT);
}

void loop() 
{
  sensorValue = analogRead(analogInPin);

  Serial.println(sensorValue);
  Serial.print(" ");
}
