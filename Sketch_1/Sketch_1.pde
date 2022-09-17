int cols = 50;
int rows = 200;

float stepx, stepy;

void setup() {
  fill(255);

  size(600, 600);
  stepx = (width / cols);
  stepy = (height / rows);
  
}

void draw() {

  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {

      stepx += y*2.0001;

      stepx = stepx%20;
      
      if (random(1) > 0.9) {
        fill(232, 81, 81);
      } else {
        fill(163, 140, 140);
      }

      rect(x * stepx, y*stepy, stepx, stepy);
    }
  }
}
