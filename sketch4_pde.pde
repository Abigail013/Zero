
int rectX, rectY;
int circleX, circleY;
int rectSize = 90;
int circleSize = 93;
color rectColor, circleColor, baseColor;
boolean rectOver = false;
boolean circleOver = false;

void setup() {
  size(1000, 1000);
  background(255);
  circleX = 50;
  circleY = 150;
  rectX = 0;
  rectY = 0;
  stroke(0);
  fill(0);
  rect(rectX, rectY, rectSize, rectSize);
  fill(255);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(#6D939B);
  rect(0, 200, 90, 90);
  fill(#4E75DE);
  rect(0, 290, 90, 90);
}

void draw() {
  update(mouseX, mouseY);


  if (mousePressed) {
    if (circleOver) {
      strokeWeight(10);
      stroke(255);
    } else if (rectOver) {
      strokeWeight(3);
      stroke(0);
    } else if (mouseX<90&&mouseY>200&&mouseY<290) {
      strokeWeight(3);
      stroke(#6D939B);
    } else if (mouseX<90&&mouseY>290&&mouseY<380) {
      strokeWeight(3);
      stroke(#4E75DE);
    } else
    {
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
