//a.
size(400, 400);
background(255);
int i = 0;

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
    i = i + 1 ;
    println(i);             //a. After adding the variable i and placing println in the for loop where line is called, line gets called 1681 times
  }
}

//b.
size(400, 400);
background(255);
int i = 0;                  //added the variable i

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
    if (x == x+dx) {        //adding the if statement "(x == x+dx)" will call out the horizontal lines. A perfect horizontal line is when x1 is equal to x2. 
    i = i + 1 ;             //adding 1 to i will count how many times a perfectly horizontal line is called
    println(i);             //b. A horizontal line is printed in the console 41 times 
    }
  }
}

//c.
size(400, 400);
background(255);
int i = 0;                  //added the variable i

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
    if (y == y+dy) {        //adding the if statement "(y == y+dy)" will call out the vertical lines. A perfect vertical line is when y1 is equal to y2. 
    i = i + 1 ;             //adding 1 to i will count how many times a perfectly vertical line is called
    println(i);             //c. A vertical line is printed in the console 41 times 
    }
  }
}
