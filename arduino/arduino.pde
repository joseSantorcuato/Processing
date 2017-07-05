/*
Programaciones Processing
Santorcuato 2017
ARDUINO, para Arduino utilizando firmata

*/

import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

  int analogo0;
  int analogo1;
  int analogo2;
  int analogo3;
    


void setup() {
  size(470, 280);


  println(Arduino.list());
  //para WINDOWS, en general utilizar lo que indica el puerto en el ide de Arduino
  //arduino = new Arduino(this, Arduino.list()[0], 57600);


  arduino = new Arduino(this, "/dev/cu.usbmodem1411", 57600);



}

void draw() {


  analogo0 = arduino.analogRead(0);
  analogo1 = arduino.analogRead(1);
  analogo2 = arduino.analogRead(2);
  analogo3 = arduino.analogRead(3);
  
  
  
 noFill();
 
 ellipse(width/2 + height/2, 100, analogo0/16, analogo1/16);

}