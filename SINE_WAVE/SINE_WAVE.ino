#define sin_out_put_pin 9

void setup()
{
  Serial.begin(9600);
}

const float rad_per_deg = 0.01745329251;      // value of a radian per degree
float theta = 0;
int pulse_width_sin = 0;
int sign = 1;                           // to control the increments or decrements of angle parameter

void loop()
{
  analogWrite( sin_out_put_pin , pulse_width_sin );    // PWM output at the given pins
  
  if (theta == 3.14159265359) sign = -1;   // keep increasing the value of theta till pi and the decrease till zero
  else if (theta == 0) sign = 1;
  
  theta = theta + (rad_per_deg * sign);
  
  pulse_width_sin = 255 * sin(theta);

  Serial.println(pulse_width_sin);

  pulse_width_sin = abs(pulse_width_sin);
  
  delay(10);  // control the frequency here
}
