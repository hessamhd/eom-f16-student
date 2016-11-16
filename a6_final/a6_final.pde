//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies


//When running on the iPad or iPhone, you won't see anything unless you tap the screen.
//If it doesn't appear to work first time, always try refreshing the browser.


Maxim maxim;
AudioPlayer player;
float power=5;
//float threshold = 0.35;// vary this until the square appears on the beats
float threshold = 1.35;// vary this until the square appears on the beats
int wait = 110;
boolean playit = false;

void setup() {
  //The size is iPad Portrait.
  //If you want landscape, you should swap the values.
  // comment out if you are on android! 
  size(768, 1024); 
  frameRate(200); // this is the framerate. Tweak for performance.
  maxim = new Maxim(this);
  player = maxim.loadFile("beat1.wav");
  player.setLooping(true);
  player.setAnalysing(true);
  rectMode(CENTER);

}
 
void draw() {
  background(random(120,8), random(28, 200), random(58, 210)); 
  textSize (30);
  text ("Click and Dance With the Circle", 140, 68);
  text ("press 1 , 2 , 3 , 4", 260, 100);
  fill(#FFFFFF);
 
  println(wait);
 noFill();
  
  if (playit) {
    player.play(); 
    power = player.getAveragePower(); 
     fill(random(120,300), random(28, 200), random(58, 210));
    ellipse(mouseX,mouseY,power*500,power*500);
    if (power>threshold && wait <0) {
    rect(100,500,0,500);
    wait=4;
  }
  wait--;
  }
 }
  


void mousePressed() {
  
    playit = !playit;
    
    if (playit) {
      fill(56,78,120);
 ellipse(power*500,power*10,mouseX,mouseY);
         player.play(); 
 
    } else {
     
     player.stop(); 
      
    }
  
}
void keyPressed() {
  if (key == '1') {
   player.volume(1.25);
    
  }
  if (key == '2') {
     player.volume(3);
  }
  if (key == '3'){
    player.volume(8);
  }
  if (key == '4'){
    player.volume(15);

 
  }
}