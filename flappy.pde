float[] values;
int index;

void setup() {
  size(600, 250);
  background(0);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);

  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;

  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    println(realIndex);                                 //a.shows highest/lowest values of the realIndex
    if (realIndex >= values.length) {                   //highest:399
      realIndex -= values.length;                       //lowest:27
      
    }
    line(i*3, height-values[realIndex], i*3, height);
    
  }
}

                                                //b. It sets back to zero twice in ten senconds

int a = 0;
float[] values;
int index;

void setup() {
  size(600, 250);
  background(0);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  int m = millis();
  background(255);

  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    a=a+1;
    index = 0;

  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    //println(realIndex);
    if (realIndex >= values.length) {
      realIndex -= values.length;
      
    }
    line(i*3, height-values[realIndex], i*3, height);
    println(m, a);
  }
}
