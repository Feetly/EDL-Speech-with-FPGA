/*
 * Refrence:
 * https://www.arduino.cc/en/Tutorial/DueSimpleWaveformGenerator
 * https://www.youtube.com/watch?v=ojkUaCSFM30
 * https://forum.arduino.cc/t/can-arduino-uno-generate-sine-wave/428985/51
 */

int f = 2;
float fs = 500.0;
int sig[500];
float t;

int analogOutPin = 9;
int analogInPin = A0;
int sensorValue = 0;

void setup() 
{
  Serial.begin(9600);
  pinMode(analogOutPin, OUTPUT);
  pinMode(analogInPin, INPUT);

  for(int i = 0; i<fs; ++i)
  {
    t = (float)i/fs;
    sig[i] = (int)(127*sin(2*3.14159*f*t + 1.0));
  }
}

void loop() 
{
  for(int i = 0; i<fs; ++i)
  {
    analogWrite(analogOutPin,sig[i]);
    delay(f);
  }

  sensorValue = analogRead(analogInPin);

  Serial.println(sensorValue);
  Serial.print(" ");
}
