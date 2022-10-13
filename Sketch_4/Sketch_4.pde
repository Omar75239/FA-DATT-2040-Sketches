
void setup() {
  
  size (640, 360);
  background(99);
  noStroke();
  
  
}

void draw() {
 
  
  fill(0, 40);
  rect(0,0,width,height);
 
  float wave = sin(radians(frameCount));
  
  float locationx = wave;
  
  line(width/2, locationx, mouseX, mouseY);
  stroke(255);
  
  fill(235, 131, 52);
  ellipse (width/2 + wave * 280, height/2, 64, 64);
 
 
}
