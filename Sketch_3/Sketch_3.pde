void setup() {
  
  size (640, 360);
  background(0);
  noStroke();
  
}

void draw() {
 
  fill(0, 40);
  rect(0,0,width,height);
 
  float wave = sin(radians(frameCount));
  
  
  fill(random(255), random(60), random(60));
  ellipse (width/2 + wave * 200, height/2, 64, 64);
  
  fill(random(20), random(255), random(20));
  ellipse (width/2 + wave * 200, height/4, 64, 64);
  
  fill(random(20), random(20), random(255));
  ellipse (width/2 + wave * 200, height/1.3, 64, 64);
  
  
  fill(random(255), random(60), random(60));
  ellipse (width/2, height/2 + wave * 200, 64, 64);
  
  fill(random(20), random(255), random(20));
  ellipse (width/4, height/2 + wave * 200, 64, 64);
  
  fill(random(20), random(20), random(255));
  ellipse (width/1.3, height/2 + wave * 200, 64, 64);
 
 
}
