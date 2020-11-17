void setup() {
  size(400,700);
}
int gravity = 1;
int birdYVelocity = 50;
int y = 350;
int x = 200;
int upperPipeHeight = (int) random(100, 400); 
int topx = 200;
int topy = 0;
int pipeGap = 50;
int lowerY = upperPipeHeight + pipeGap;

void draw() {
  background(0, 252, 0);
fill(0, 0, 252);
stroke(0, 0, 0);
ellipse(200, y, 32, 25);

y += gravity;
fill(255, 0, 255);
rect(topx, topy, 50, upperPipeHeight);
topx -= 5;

fill(155, 0, 255);
rect(topx, topy, 50, lowerY);

teleportPipes();
} 

void mousePressed() {
  y -= birdYVelocity;
}

void teleportPipes() {
  if(topx <= -50){
    topx = width;
    upperPipeHeight = (int) random(100, 400); 
    lowerY = upperPipeHeight + pipeGap;
  }
}
