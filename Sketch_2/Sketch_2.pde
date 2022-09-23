//# of Visual Elements Controlled by PVector: 4 (location, velocity, acceleration, & mouse)
//# of PVector methods: 2 (add & dist)

PVector location;  
PVector velocity;  
PVector acceleration;   
PVector mouse;


void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  acceleration = new PVector(0,0.6);
}

void draw() {
  background(80);
  
  location.add(velocity);

  velocity.add(acceleration);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }

  mouse  = new PVector(mouseX,mouseY);
  line(location.x, location.y, mouse.x, mouse.y);

  float targetX = mouse.x;
  float dx = targetX - location.x;
  location.x = location.x + dx * 0.1;
  
  float distance = PVector.dist(mouse, location);
  println(distance);
  fill(255);
  text(distance, 100, 100);
  
  stroke(0);
  strokeWeight(2);
  fill(245, 119, 35);
  ellipse(location.x,location.y,48,48);
}
