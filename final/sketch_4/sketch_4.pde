/*
this sketch uses an incrementation variable to change the
color of a rectangle from black to white.

replace the incrementation approach with a color transition
based on a sin() function for a smoother cycle.

remember that sin() returns a value from -1 to 1.
*/

float incr = 1;
float c = 0;
float angle;
float rate;
float amplitude;

void setup() {
  size(600, 600);
  angle = 0;
  rate = 0.03;
  amplitude = 5;
}

void draw() {
  if (c > 255 || c < 0) {
    incr = -incr;
  }
  //c += incr;
  incr += rate;
  c += sin(incr) * amplitude;
  fill(c);

  rect(100, 100, 400, 400);
}
