
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x3F for a 16 chars and 2 line display


const int trig = 5;
const int echo = 18;
const int ledPin = 4;

//define sound speed in cm/uS
#define soundSpeed 0.034

void setup() {
  // put your setup code here, to run once:
  lcd.init();
  lcd.clear();         
  lcd.backlight();
  
  Serial.begin(115200);
 pinMode(trig , OUTPUT);
 pinMode(echo , INPUT);
 pinMode (ledPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
 lcd.setCursor(0,0);   //Set cursor to character 2 on line 0
 lcd.print("Tank Level(cm)");
float distance = readdistance();
 Serial.print(distance);
 Serial.println("cm");

 lcd.setCursor(4,1);   //Move cursor to character 2 on line 1
 lcd.print(distance);
 
 delay(1000);
 lcd.clear();
 if (distance <= 5){
  led_on();
  }
else{
    led_off();
    }
}
//fucntion to read distance
float readdistance(){
  digitalWrite(trig,  LOW);
delayMicroseconds(20);
digitalWrite(trig,  HIGH);
delayMicroseconds(10);
digitalWrite(trig,  LOW);

float echoTime = pulseIn(echo,HIGH);
return (soundSpeed * echoTime)/2 ; 
}
//function for led
void led_on(){
  digitalWrite (ledPin, HIGH);
  }
  void led_off(){
  digitalWrite (ledPin, LOW);
  }
