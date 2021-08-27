int pinInput[8] = {2,3,4,5,6,7,8,9};
int val[8] = {0,0,0,0,0,0,0,0};

const int sampleWindow = 1000;

void setup() {
  Serial.begin(9600);

  #pragma omp parallel for
  for(int i = 0; i < 8; ++i)
    pinMode(pinInput[i],INPUT);
}

void loop() {

  unsigned long startMillis = millis();  // Start of sample window

  long int noOfSamp = 0;

  while (millis() - startMillis < sampleWindow)
  {
      
    #pragma omp parallel for
    for(int i = 0; i < 8; ++i)
      val[i] = digitalRead(pinInput[i]);

    noOfSamp++;
  }
  
  noOfSamp /= sampleWindow;
  
  Serial.println(noOfSamp);
}
