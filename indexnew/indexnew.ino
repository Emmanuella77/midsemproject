#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include <ESPmDNS.h>
#include <HTTPClient.h>  //because of HTTPClient use``
#include "indexnew.h"
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x3F for a 16 chars and 2 line display


int count = 0;
//const char* ssid = "iPhone";
//const char* password = "emmafosu77";


const char* ssid = "Ben.Fra.Pri";
const char* password = "M633SFTK";

//const char* ssid = "OnePlus Air";
//const char* password = "goandbuycredit";

WebServer server(80);

const int trig = 5;
const int echo = 18;
//const int ledPin = 4;

const int led = 2;
const int relay = 4;
#define soundSpeed 0.034


void handleRoot() {
  //digitalWrite(led, 1);
  server.send(200, "text/plain", "hello from esp32!");
  //digitalWrite(led, 0);
}

void action(){
  server.send(200,"text/html",page);
}

void waterLevel(){
  //put ultrasonic code here
digitalWrite(trig,  LOW);
delayMicroseconds(20);
digitalWrite(trig,  HIGH);
delayMicroseconds(10);
digitalWrite(trig,  LOW);

float echoTime = pulseIn(echo,HIGH);
float distance = (soundSpeed * echoTime)/2 ; 
// char mssg = String(distance)//value in string from ultrasonic
  server.send(200, "text/plain","Current water level is: "+ String(distance));
}


void handleNotFound() {
  //digitalWrite(led, 1);
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET) ? "GET" : "POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i = 0; i < server.args(); i++) {
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
  //digitalWrite(led, 0);
}

void setup(void) {

  lcd.init();
  lcd.clear();         
  lcd.backlight();
  pinMode(trig , OUTPUT);
 pinMode(echo , INPUT);

 pinMode(relay,OUTPUT);
  pinMode(led, OUTPUT);
  //digitalWrite(led, 0);
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
    Serial.println("not connecting");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp32")) {    //multicast DNS service
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);
  
  server.on("/action",action);
  server.on("/autoFunction",autoFunction);
  server.on("/manualFunction",manualFunction);
  server.on("/viewLevel",waterLevel);


  server.onNotFound(handleNotFound);
  server.on("/client", doGETRequest);
  
  server.begin();
  Serial.println("HTTP server started");
}

int LEDRpin = 21;

int LEDR = LOW;
int LEDG = LOW;
int manualState = 0;
 
void autoFunction(){
  //whole code for ultrasonic motor led
  LEDR = !LEDR;

  if(manualState == 1){
    //digitalWrite(led,LEDR); 
    digitalWrite (led,LEDR);
    digitalWrite (relay,!LEDR);
    if(LEDR == 0){
      Serial.println("Light is off");
    }
    if(LEDR == 1){
      Serial.println("Light is on");
    }
  }
  
  




}

void manualFunction(){

  manualState = ! manualState ;

  

}


void loop(void) {
  server.handleClient();
   delay(2);//allow the cpu to switch to other tasks
   lcd.setCursor(0,0);   //Set cursor to character 2 on line 0
 lcd.print("Tank Level(cm)");
digitalWrite(trig,  LOW);
delayMicroseconds(20);
digitalWrite(trig,  HIGH);
delayMicroseconds(10);
digitalWrite(trig,  LOW);

float echoTime = pulseIn(echo,HIGH);
float distance = (soundSpeed * echoTime)/2 ;
    //float distance = readdistance();


 if(manualState == 0){

    if (distance <= 20 ){
  digitalWrite (led, HIGH);
  digitalWrite (relay, LOW);
  
  }
else{
    digitalWrite (led, LOW);
    digitalWrite (relay, HIGH);
    }

 }

  Serial.print(distance);
 Serial.println("cm"); 
 lcd.setCursor(4,1);   //Move cursor to character 2 on line 1
 lcd.print(distance);
 delay(100);
 lcd.clear();


 //allow the cpu to switch to other tasks
 //digitalWrite
}
       
String serverName="http://www.example.com";  //need the http!
void doGETRequest(){
  //Check WiFi connection status
    if(WiFi.status()== WL_CONNECTED){
      HTTPClient http;      
      String serverPath = serverName +"/index.html";
      // Your Domain name with URL path or IP address with path
      http.begin(serverPath.c_str());  //alt use char host[] = "example.com";
      
      // Send HTTP GET request
      int httpResponseCode = http.GET();
      
      if (httpResponseCode>0) {
        Serial.print("HTTP Response code: ");
        Serial.println(httpResponseCode);
        String payload = http.getString();
        Serial.println(payload);
        server.send(200, "text/html", payload);
      }
      else {
        Serial.print("Error code: ");
        Serial.println(httpResponseCode);
      }
      // Free resources
      http.end();
    }
    else {
      Serial.println("WiFi Disconnected");
    }
}
//=====
/** //ignore the ff. Need to do all HTTP protocol
WiFiClient client;
char url[] = "/index.html";
char host[] = "example.com";
String data;

void getVal(){
  
  Serial.print("sourcing ");
  client.connect(host, 80);
  client.println(String("GET ") + url);
  client.println(String("Host: ") + host);
  client.println("User-Agent: ESP8266/0.1");
  client.println("Connection: close");
  client.println();
  client.flush();
  delay(100);
  while(client.connected())
  {
    if(client.available())
    {
      data = client.readStringUntil('\n'); 
      Serial.println(data);
      //do something.
     
       
        client.stop();
        delay(100);
    }
  }
}
*/
