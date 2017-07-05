/*
Programaciones Processing
Santorcuato 2017
OSC2, para app control osc http://charlie-roberts.com/Control/

*/
import oscP5.*;
import netP5.*;

OscP5 oscP5;
float valor1;
float valor2;
float valor3;
float valor4;
float valor5;
float valor6;
float valor7;
float valor8;





void setup() {
  size(400,400);
  frameRate(25);

  oscP5 = new OscP5(this,10000);

}


void draw() {
  background(0);
}

void oscEvent(OscMessage oscRecibido) {
  //println("### Mensaje recibido osc con direccion "+oscRecibido.addrPattern()+" y etiqueta  "+oscRecibido.typetag());
  //oscRecibido.print();
  //oscRecibido.print();



  //print(" direccion: "+oscRecibido.addrPattern());
  //println(" etiqueta: "+oscRecibido.typetag());



  if (oscRecibido.addrPattern().equals("/multi/1")){

     println("cuadrado1, valores:");

  valor1 = oscRecibido.get(0).floatValue();
  valor2 = oscRecibido.get(1).floatValue();

  float x1 = valor1;
  float y1 = valor2;

  println("x "+x1);
  println("y "+y1);

  }

   if (oscRecibido.addrPattern().equals("/multi/2")){
  valor3 = oscRecibido.get(0).floatValue();
  valor4 = oscRecibido.get(1).floatValue();

  println("cuadrado2, valores:");

  float x2 = valor3;
  float y2 = valor4;

  println("x "+x2);
  println("y "+y2);

  }

   if (oscRecibido.addrPattern().equals("/multi/3")){
  valor5 = oscRecibido.get(0).floatValue();
  valor6 = oscRecibido.get(1).floatValue();

  println("cuadrado3, valores:");
  float x3 = valor5;
  float y3 = valor6;

  println("x "+x3);
  println("y "+y3);

  }

    if (oscRecibido.addrPattern().equals("/multi/3")){



  }
}
