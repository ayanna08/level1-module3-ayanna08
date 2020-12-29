int x = 10;
int y = 500;
Car car1;
Car car2;
Car car3;
Car car4;
Car car5;
Car car6;
PImage back;
PImage carLeft;
PImage carRight;
PImage frog;

void setup() {
  size(800, 600);
  car1 = new Car(100, 250, 50, 10);
  car2 = new Car(100, 50, 50, -7);
  car3 = new Car(100, 75, 50, 2);
  car4 = new Car(100, 175, 50, 8);
  car5 = new Car(100, 300, 50, -4);
  car6 = new Car(100, 400, 50, -11);
  back = loadImage("froggerBackground.png");
  back.resize(width, height);
  carLeft = loadImage("carLeft.png");
  carLeft.resize(160, 100);
  carRight = loadImage("carRight.png");
  carRight.resize(160, 100);
  frog = loadImage("frog.png");
  frog.resize(75, 75);
}
void draw() {
  background(back);
  image (carLeft, 250, 360);
  image (carRight, 250, 210);
  image (frog, 300, 530);
  background(0, 0, 255);

  fill(0, 255, 0);
  ellipse(x, y, 50, 50);
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car5.display();
  car6.display();

  if (intersects(car1)) {
    noLoop();
  }
  if (intersects(car2)) {
    noLoop();
  }
  if (intersects(car3)) {
    noLoop();
  }
  if (intersects(car4)) {
    noLoop();
  }
  if (intersects(car5)) {
    noLoop();
  }
  if (intersects(car6)) {
    noLoop();
  }
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {

      if (y >= 60) {
        y = y - 10;
      }
    } else if (keyCode == DOWN)
    {
      if (y <= height - 60) { 
        y = y+10;
      }
    } else if (keyCode == RIGHT)
    {
      if (x <= width - 60) {
        x = x+10;
      }
    } else if (keyCode == LEFT)
    {
      if (x >= 60) {  
        x = x-10;
      }
    }
  }
}

boolean intersects(Car car) {
  if ((y+18 > car.getY() && y-18 < car.getY()+50) &&
    (x+18 > car.getX() && x-18 < car.getX()+car.getSize())) {
    return true;
  } else {
    return false;
  }
}
