import processing.pdf.*;
boolean record;

void setup(){
  size(800,800);
  frameRate(2);
}
void draw(){
  background(200);
    if(record){
  beginRecord(PDF, "tablet-####.pdf");
  }
  tablet(random(30,220),random(100,300));
  if (record){
  endRecord();
  record = false;
  }
}
void tablet(float ample, float alt){

  noStroke();
  rectMode(CENTER);
  
  // rectangulo exterior
  fill(255, 182, 193); //rosita pastel
  stroke(255, 105, 180); // rosa fuerte
  strokeWeight(ample/200); // Grosor de la línea exterior
  rect(ample/2, alt/2, ample, alt); // rectangulo exterior
  
  // rectangulo interior
  fill(255); //blanco
  strokeWeight(ample/200); // Grosor de la línea interior
  rect(ample/1.9, alt/2, ample/1.2, alt/1.2); // rectangulo interior
  
  // botón
  fill(255); //blanco
  ellipse(ample/17, alt/2, ample/20, alt/20); // botón
  
  // camara
  fill(255, 105, 180); //rosa fuerte
  ellipse(ample/1.1 , alt/2, ample/70, alt/70); // camara
}
  void mousePressed(){
  record = true;
  }
