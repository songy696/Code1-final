/*
convert the sketch below to use two 'while' loops, 
rather than two 'for' loops. it should look the same.
*/

void setup() {
  size(600, 600);
  
  int i =0;
  //int j =0;
  
  while (i < width) {
    int j = 0;
    while (j < height) {
      //i++;
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      stroke(r, g, 175);
      //i++;
      point(i, j);
      
      j++;
    }
    i++;
  }
  
}
