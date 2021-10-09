float i=0;
float j=0;
void setup() {
  size(800, 800);
  background(255);
  strokeWeight(5);
  i=random(0, 100);
  line(i, 0, i, 800);
  j=random(0, 100);
  line(0, j, 800, j);

  i=random(100, 200);
  line(i, 0, i, 800);
  j=random(100, 200);
  line(0, j, 800, j);

  i=random(200, 300);
  line(i, 0, i, 800);
  j=random(200, 300);
  line(0, j, 800, j);

  i=random(300, 400);
  line(i, 0, i, 800);
  j=random(300, 400);
  line(0, j, 800, j);

  i=random(400, 500);
  line(i, 0, i, 800);
  j=random(400, 500);
  line(0, j, 800, j);

  i=random(500, 600);
  line(i, 0, i, 800);
  j=random(500, 600);
  line(0, j, 800, j);

  i=random(600, 700);
  line(i, 0, i, 800);
  j=random(600, 700);
  line(0, j, 800, j);

  i=random(700, 800);
  line(i, 0, i, 800);
  j=random(700, 800);
  line(0, j, 800, j);
  fill(100);
  for (float k=0; k<8; k=k+0.5) {
    rect(random(800), random(800), random(100, 200), random(100, 200));
  }
}
