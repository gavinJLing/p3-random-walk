class Walker{
  int x;
  int y;
  int xOld;
  int yOld;
  int colour;
  
  Walker(){
    this.x=width /2;
    this.y=height /2;
    this.xOld = x;
    this.yOld = y;
    this.colour = 1;
  }
  
  void display(){
    stroke(colour);
    //point(x,y);
    line(x,y,xOld,yOld);
    
    this.xOld = x;
    this.yOld = y;
  }
    
  void step(){
    int choice = int(random(4));
    int xStepSize = int( random(4))+1;
    int yStepSize = int( random(4))+1;
    colour = int(random(255));
    
    
    
    if (choice == 0) {
        x += xStepSize;
        y += yStepSize;
    } else if (choice == 1) {
        x += xStepSize;
        y -= yStepSize;
    } else if (choice == 2) {
        x -= xStepSize;
        y += yStepSize;
    } else { 
        x -= xStepSize;
        y -= yStepSize;
    }
    
    
  }
  
}
  
Walker w;

void setup(){
  size(640,480);
  w = new Walker();
  
  background(255);
}


void draw(){
  w.step();
  w.display();
}
