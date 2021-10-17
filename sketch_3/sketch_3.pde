PFont font;
float r = 300;
float j;
float k;
String s="Betty bought butter, but the butter was bitter, so Betty bought better butter to make the  better.";
void setup() {
  size(1000, 1000);
  background(255);
  font=loadFont("InkFree-48.vlw");
  textAlign(CENTER);
}
void draw() {
  background(255);
  translate(width / 2, height / 2);
  noFill();
  k=map(mouseY,0,1000,0,255);
  stroke(100,k,200);
  j=map(mouseX,0,1000,2,3);
  ellipse(0, 0, r*j, r*j);
  float arclength=0;
  
  textFont(font);
  textSize(40);
  fill(100,k,200);
  for (int i=0; i<s.length(); i++) {
   char currentChar=s.charAt(i);
    float w=textWidth(currentChar);
    arclength+=w/2;
    float theta=mouseX*PI/15+arclength/r;
    pushMatrix();
    translate(r*cos(theta),r*sin(theta));
    rotate(theta+PI/2);
    fill(100,k,200);
    text(currentChar,0,0);
    popMatrix();
    arclength+=w/2;
  }
}
