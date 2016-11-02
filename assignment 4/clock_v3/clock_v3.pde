float x_sec, x_min, x_hou;
float y_sec, y_min, y_hou;
float incr_60 = -TWO_PI/60;
float incr_24 = -TWO_PI/12;
color col = #2F3132;
PImage img1, img2;
boolean happy = false;

void setup() {
  size(600, 750);
  img1 = loadImage("face.png");
  img2 = loadImage("face2.png");
}

void draw() {
  int h = hour();      
  int m = minute();  
  int s = second();  

  float r = map( h, 0, 23, 0, 255);
  float g = map( m, 0, 59, 0, 255);
  float b = map( s, 0, 59, 0, 255);

  background(r, g, b);

  // draw text before translate
  if (happy) {
    textSize(35);
    text("JUST TAKE A DEEP BREATH", 74, 60);
    textSize(26);
    text("Take it easy", 229, 98);
  }

  translate(width/2, height/2); 
  int secondes = second();
  int minutes = minute();
  int hour = abs(hour()-12);

  if (happy) {
    image(img2, -250, -250);
  } else {    
    image(img1, -250, -250);
  }

  for (int i = 0; i<60; i++) {
    strokeWeight(10);
    if (i == secondes) {
      stroke(col);
    } else {
      stroke(#F8CA4D);
    }
    x_sec = sin(PI+i*incr_60)*200;
    y_sec = cos(PI+i*incr_60)*200;
    point(x_sec, y_sec);
  }

  for (int i = 0; i<60; i++) {
    strokeWeight(17);
    if (i == minutes) {
      stroke(col);
    } else {
      stroke(#EA6045);
    }
    x_min = sin(PI+i*incr_60)*170;
    y_min = cos(PI+i*incr_60)*170;
    point(x_min, y_min);
  }   

  for (int i = 0; i<12; i++) {
    strokeWeight(45);
    if (i == hour) {
      stroke(col);
    } else {
      stroke(#3F5666);
    }
    x_hou = sin(PI+i*incr_24)*100;
    y_hou = cos(PI+i*incr_24)*100;
    point(x_hou, y_hou);
  }

  fill(#FFFFFF);
  textSize(20);
  text("Press the circle if you are tired", -154, 232);
  strokeWeight(5);
  ellipse(-9, 278, 60, 60);
}

void mouseClicked() {
  happy = true;
}