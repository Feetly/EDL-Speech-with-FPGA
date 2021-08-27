// https://electronics.stackexchange.com/questions/54/saving-arduino-sensor-data-to-a-text-file

int pinInput[8] = {2,3,4,5,6,7,8,9};
int val[8] = {0,0,0,0,0,0,0,0};

void setup() {
  Serial.begin(9600);
  
  for(int i=0;i<8;++i)
    pinMode(pinInput[i],INPUT);
}

void loop() {
  int cur;
  
  for(int i = 0; i < 8; ++i)
    val[i] = digitalRead(pinInput[i]);

  int dec = 0;
  int mul = 1;
  
  for(int i = 0; i < 8; ++i){
    dec += val[i]*mul;
    mul *= 2;
  }
  
  float analog = (dec/255.0) * 4.5; 

  Serial.println(analog);  
//  Serial.print("Analog: "+String(analog));
//  Serial.print(", Dec: "+String(dec));
//  Serial.print(", Bin: ");
//  for(i=0;i<8;++i){
//    Serial.print(val[i]);
//    Serial.print(" ");
//  }
//  Serial.println();
//  delay(100);
}
