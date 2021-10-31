
class Circle {
  PVector pos;
  float rr = initRadiu;
  float radius;
  float i;
  boolean growing = true;
  boolean touch = false;

  Circle(PVector position) {
    pos = position;
  }

  void update() {
    circleTouch();
    growth();
    showCircle();
  }

  void showCircle() {
    fill(#6572BC);
    noStroke();
    ellipse(pos.x, pos.y, rr*2, rr*2);
    radius = map(dist(pos.x, pos.y, 0, 0), 0, 150, 30, 1);
 
    fill(255);
    ellipse(pos.x, pos.y, radius/2,radius-20) ;
  }
  void growth() {
    if (edge() || touch) {
      growing = false;
    }
    if (growing) {
      rr ++;
    }
  }

  boolean edge() {
    return((pos.x+rr)>width || (pos.x-rr)<0 || (pos.y+rr)>height || (pos.y-rr)<0);
  }

  void circleTouch() {
    for (Circle cir : cirls) {
      float d = PVector.dist(cir.pos, pos);
      if (cir != this && d < cir.rr+rr/2) {
        touch = true;
      }
    }
  }
}
