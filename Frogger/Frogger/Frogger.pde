int x = 10;
int y = 500;
void setup(){
  size(800,600);
  
}

void draw(){
  background(0,0,255);
  
  fill(0, 255, 0);
  ellipse(x, y, 100, 100);
  
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
      
        if(y >= 60){
        y = y - 10;
        }
          
        }
        else if(keyCode == DOWN)
        {
          if(y <= height - 60){ 
          y = y+10;
          }
        }
        else if(keyCode == RIGHT)
        {
          if(x <= width - 60){
          x = x+10;
          }
        }
        else if(keyCode == LEFT)
        {
          if(x >= 60){  
          x = x-10;
          }
        }
        }
    }
    
