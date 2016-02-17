final int GRID_SIZE = 10;
final float GRID_PADDING = 50;

void setup() {
  size(500, 500);
  mouseX = mouseY = 250;
}

float gridToCoordinates(int input) {
  return GRID_PADDING+input*(500 - 2*GRID_PADDING)/(GRID_SIZE-1);
}

void draw() {
  background(0);

  noStroke();
  fill(255);
  for (int i = 0; i < GRID_SIZE; ++i) {
    for (int j = 0; j < GRID_SIZE; ++j) {
      float distance = sqrt(pow(mouseX-gridToCoordinates(i), 2) + pow(mouseY-gridToCoordinates(j), 2));
      float ellipseSize = min(50, 1000.0/distance);
      ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
    }
  }
}

//line 21- by changing 'min' from 100 to 50,I was able to create a floating ellipse that touches instead of overlapping.
