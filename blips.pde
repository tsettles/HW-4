//a. The highest possible value assigned to any slot of the count array is 30 with 499 slots.
//b. The length of the fifth drawn line is 50
int[] x;
int[] count;

void setup() {
  size(500, 500);

  x = new int[height];
  count = new int[height];
  for (int i = 0; i < height; i++) {
    count[i] = 30;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < height; i++) {
    if (count[i] < 30) {
      if (count[i] < 15) {
        line(x[i], i, x[i] + count[i]*10, i);
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i);
      }
      if (count[i] == 5) {
        println(x[i]-(x[i] + count[i]*10));
      }
    }
    count[i]++;
  }

  if (mousePressed) {
    x[mouseY] = mouseX;
    count[mouseY] = 0;
  }
}
