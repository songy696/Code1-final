/*
this sketch draws an ellipse that has a 25% chance of 
moving up, left, down or right.

use arrays to create a group of these 'random walkers'
instead of only displaying one. replace the position 
variables with arrays and loop to give them values, 
increment their positions, and draw their corresponding 
ellipses.
*/
float xPos = width/2;
float yPos = height /2;
float[][] randomWalkers = new float[xPos][yPos];


void setup() {
  size(600, 600);
  //xPos = width/2;
  //yPos = height/2;
  frameRate(15);
  background(125);
  for(int i = 0; i < xPos; i ++){
    for(int j = 0; j < yPos; j ++){
    randomWalkers[i][j] = 10;
  }
  }
}

void draw() {
   for(int i = 0; i < xPos; i ++){
    for(int j = 0; j < yPos; j ++){
    ellipse(xPos, yPos, 10, 10);
  }
  }

  float r = random(4);

  if (int(r) == 0) {
    xPos += 5;
  } else if (int(r) == 1) {
    xPos -= 5;
  } else if (int(r) == 2) {
    yPos += 5;
  } else if (int(r) == 3) {
    yPos -= 5;
  }
} 
