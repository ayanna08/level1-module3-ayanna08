public class Car{
  int x;
  int y;
  int size;
  int speed;
  
  Car(int x,int y,int size, int speed){
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  
  int getX(){
    return x;
  }
  
  int getY(){
    return y;
  }
  
  int getSize(){
    return size;
  }
  
  void display(){
    fill(0,255,0);
    rect(x, y, size, 50);
    x = x + speed;
    if(x >= 800){
      x = 0;
    }
    if(x <= -size){
      x = 800;
    }
    
  }
   
}
