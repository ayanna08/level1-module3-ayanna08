void setup() {
  size(400, 700);
}
int gravity = 1;
int birdYVelocity = 50;
int y = 350;
int x = 200;
int upperPipeHeight = (int) random(100, 400); 
int topx = 400;
int topy = 0;
int pipeGap = 100;
int lowerY = upperPipeHeight + pipeGap;

void draw() {
  background(0, 252, 0);
  fill(0, 0, 252);
  stroke(0, 0, 0);
  ellipse(200, y, 32, 25);
rect(0, 650, 600, 50);
  y += gravity;
  
  topx -= 3;

  // upper pipe
  fill(255, 0, 255);
  rect(topx, topy, 50, upperPipeHeight);

//  topx -= 3;

//  fill(155, 0, 255);
    
  // lower pipe
  // rect( x, y, width, height )
  rect(topx, lowerY, 50, height);
  boolean collision = intersectsPipes();
  if(collision){
    noLoop();
    text("You Lost", 200, 350); 
  }
  teleportPipes();
 
} 

void mousePressed() {
  y -= birdYVelocity;
}

void teleportPipes() {
  if (topx <= -50) {
    topx = width;
    upperPipeHeight = (int) random(100, 400); 
    lowerY = upperPipeHeight + pipeGap;
  }
}


boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > topx && x < (topx+50)){
            return true; }
        else if (y>lowerY && x > topx && x < (topx+50)) {
            return true; }
        else { return false; }
}
