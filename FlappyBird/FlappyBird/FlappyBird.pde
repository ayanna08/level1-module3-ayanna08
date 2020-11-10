void setup() {
  size(400,700);
}
int gravity = 1;
int birdYVelocity = 50;
int y = 350;

void draw() {
  background(0, 252, 0);
fill(0, 0, 252);
stroke(0, 0, 0);
ellipse(200, y, 32, 25);

y += gravity;
}
