#include <Arduino.h>
#include "DHT.h"

#include <WiFi.h>
#include <WiFiMulti.h>

#include <HTTPClient.h>
#define USE_SERIAL Serial
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x3F for a 16 chars and 2 line display

WiFiMulti wifiMulti;
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
  
 USE_SERIAL.println();
    USE_SERIAL.println();
    USE_SERIAL.println();

    for(uint8_t t = 4; t > 0; t--) {
        USE_SERIAL.printf("[SETUP] WAIT %d...\n", t);
        USE_SERIAL.flush();
        delay(1000);
    }

 // WiFi.mode(WIFI_STA);
  wifiMulti.addAP("iPhone", "emmafosu77");
  
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
 
 database("http://172.20.10.12/IOT_php/Iotproject.php?insert&Water_level="+String(distance)+"&TankID=1");

 delay(100);
 lcd.clear();
 if (distance >=0 and distance <= 20 ){
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

  //function for inserting into database
void database(String y){
  // wait for WiFi connection
    if((wifiMulti.run() == WL_CONNECTED)) {

        HTTPClient http;

        USE_SERIAL.print("[HTTP] begin...\n");
        // configure traged server and url
        //http.begin("https://www.howsmyssl.com/a/check", ca); //HTTPS
        http.begin(y); //HTTP

        USE_SERIAL.print("[HTTP] GET...\n");
        // start connection and send HTTP header
        int httpCode = http.GET();

        // httpCode will be negative on error
        if(httpCode > 0) {
            // HTTP header has been send and Server response header has been handled
            USE_SERIAL.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == HTTP_CODE_OK) {
                String payload = http.getString();
                USE_SERIAL.println(payload);
            }
        } else {
            USE_SERIAL.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
        }

        http.end();
    }

    delay(5000);
}
