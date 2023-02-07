PImage Carretera;
float x = 100;
float y = 500;
float speed = 5;
float x2 = 800;
float y2 = 400;

void setup(){
  size(1200, 675);
  Carretera = loadImage("Carretera.jpg");
}

void draw(){
  image(Carretera,0,0);
  move1();
  move2();
  carro();
}
//Moviemiento carro azul
void move1(){
  x = x + speed;
  if(x > width+150){
    x = 0;
  }
}
//Movimiento carro verde
void move2(){
  x2 = x2 - speed;
  if(x2 == -300){
    x2 = 1200;
  }
}

void carro(){
  //Carro Verde//
  fill(#00FF00);
  stroke(#000000);
  strokeWeight(5);
  quad(x2,y2+55, x2+200,y2+55, x2+175,y2-20, x2+25,y2-20);
  
  fill(#C0C0C0);
  strokeWeight(3);
  quad(x2+15,y2+55, x2+185,y2+55, x2+165,y2-10, x2+35,y2-10);
  
  fill(#00FF00);
  strokeWeight(5);
  rect(x2-50, y2+55, 300, 90, 20);
  
  fill(#999999);
  strokeWeight(15);
  circle(x2+5, y2+130, 60);
  
  fill(#999999);
  strokeWeight(15);
  circle(x2+195, y2+130, 60);
  
  strokeWeight(3);
  line(x2+100, y2+142, x2+100, y2-8);
  
  fill(#808080);
  rect(x2+110, y2+65, 20, 10, 5);
  
  rect(x2+70, y2+65, 20, 10, 5);
  
  fill(#FF0000);
  rect(x2+222, y2+57, 25, 25, 20);
  
  fill(#FFFF00);
  rect(x2-48, y2+57, 30, 25, 20);
  
  
  //Carro Azul//
  fill(#0000FF);
  stroke(#000000);
  strokeWeight(5);
  quad(x,y+50, x+200,y+50, x+175,y-25, x+25,y-25);
  
  fill(#C0C0C0);
  strokeWeight(3);
  quad(x+15,y+50, x+185,y+50, x+165,y-15, x+35,y-15);
  
  fill(#0000FF);
  strokeWeight(5);
  rect(x-50, y+50, 300, 90, 20);
  
  fill(#999999);
  strokeWeight(15);
  circle(x+5, y+125, 60);
  
  fill(#999999);
  strokeWeight(15);
  circle(x+195, y+125, 60);
  
  strokeWeight(3);
  line(x+100, y+137, x+100, y-13);
  
  fill(#808080);
  rect(x+110, y+60, 20, 10, 5);
  
  rect(x+70, y+60, 20, 10, 5);
  
  fill(#FFFF00);
  rect(x+218, y+52, 30, 25, 20);
  
  fill(#FF0000);
  rect(x-48, y+52, 25, 25, 20);
}
