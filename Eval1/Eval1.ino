int pinInput[8] = {2,3,4,5,6,7,8,9};
int val[8] = {0,0,0,0,0,0,0,0};

const float offset = 4.5;
const int nbits = 8;
const int max_bits = 255;
const int max_volt = 5;
const int ledPin =  LED_BUILTIN;// the number of the LED pin LED_BUILTIN
const float threshold = 3.0;

const int sampleWindow = 10; // Sample window width in mS (50 mS = 20Hz)
float sample;

void setup() {
  Serial.begin(9600);
  
  for(int i = 0; i < nbits; ++i)
    pinMode(pinInput[i],INPUT);

  pinMode(ledPin,OUTPUT);
}

void loop() {

  unsigned long startMillis = millis();  // Start of sample window
//  unsigned int peakToPeak = 0;   // peak-to-peak level
  
//  unsigned int signalMax = 0;
//  unsigned int signalMin = max_volt;

  float energy = 0.0;
  int noOfSamp = 0;

  while (millis() - startMillis < sampleWindow)
  {
    for(int i = 0; i < nbits; ++i)
      val[i] = digitalRead(pinInput[i]);
  
    int dec = 0, mul = 1;
    
    for(int i = 0; i < nbits; ++i){
      dec += val[i]*mul;
      mul *= 2;
    }
    
    float analog = (dec/255.0) * offset;
    sample = analog;
  
    if (sample < 5 && sample > 0)  // toss out spurious readings
    {
//      if (sample > signalMax)
//        signalMax = sample;  // save just the max levels
//      else if (sample < signalMin)
//        signalMin = sample;  // save just the min levels

      energy += sample*sample;
      ++noOfSamp;
    }
  }

//  peakToPeak = signalMax - signalMin;  // max - min = peak-peak amplitude
  energy /= noOfSamp; 
  
  if (energy >= threshold){
    digitalWrite(ledPin, HIGH);
    digitalWrite(12, HIGH);
    }
  else{
    digitalWrite(ledPin, LOW);
    digitalWrite(12, LOW);
    }
    
  Serial.println(energy);
}
