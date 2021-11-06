void setup() {
  size(1000, 1000);
  background(255);
}
void draw() {
  drawRect(width/2, 0,500);
}
void drawRect(float x, float y, float radius) {
  noFill();
  rect(x, y, radius, radius);
  if (radius>2) {
    drawRect(x+radius/2, y, radius/2);
    drawRect(x-radius/2, y, radius/2);
    drawRect(x+radius/2,y+radius/2,radius/2);

  }
}
