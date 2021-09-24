
void setup() {
  size(640, 360);
  noStroke();
  background(0);
}

void draw() {
 
    fill(mouseX, random(255), mouseY);
    rect(mouseX, 0, mouseY,360);

  }
