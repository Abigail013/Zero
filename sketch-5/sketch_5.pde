
ArrayList<Circle> cirls;
int num = 1000;
int index = 0;
float initRadiu = 4;
boolean saveSVG = false;

void setup() {
  size(1200, 1200);
  cirls = new ArrayList<Circle>();
  PVector p = PVector.random2D();
  p.mult(random(width/6, width/3));
  p.add(new PVector(width/2, height/2));

  cirls.add(new Circle(p));
}

void initiate() {
  cirls = new ArrayList<Circle>();
  PVector p = PVector.random3D();
  p.mult(random(width/6, width/3));
  p.add(new PVector(width/2, height/2));

  cirls.add(new Circle(p));
}

void draw() {
  background(255);

  if (index <= num) {
    PVector p = PVector.random2D();
    p.mult(random(width/6, width/3));
    p.add(new PVector(width/2, height/2));

    int inside = 0;
    for (Circle c : cirls ) {
      float dd = PVector.dist(c.pos, p);
      if (dd < c.rr + initRadiu) {
        inside ++;
      }
    }
    if (inside < 1) {
      cirls.add(new Circle(p));
      index++;
    }
  }

  if (saveSVG) {
    beginRecord(SVG, "output/circlePark"+hour()+minute()+second()+".svg");
  }

  for (Circle c : cirls ) {
    c.update();
  }

  if (saveSVG) {
    endRecord();
    saveSVG = false;
  } 
}
