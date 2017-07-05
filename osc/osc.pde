

/*
Programaciones Processing
Santorcuato 2017
OSC, para app control osc http://charlie-roberts.com/Control/ 

*/
import oscP5.*;
import netP5.*;

OscP5 oscP5;
float valor1;
float valor2;



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
  valor1 = oscRecibido.get(0).floatValue();
  valor2 = oscRecibido.get(1).floatValue();


  if (oscRecibido.addrPattern().equals("/multi/1")){



  float x1 = valor1;
  float y1 = valor2;

  println("x "+x1);
  println("y "+y1);

  }

   if (oscRecibido.addrPattern().equals("/multi/2")){

  float x2 = valor1;
  float y2 = valor2;

  println("x "+x2);
  println("y "+y2);

  }

    if (oscRecibido.addrPattern().equals("/multi/3")){



  }
}
