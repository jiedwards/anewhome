class Object { 
  PImage object;
  int x = width - 100;
  int y, xSpeed;
  
  Object (int y, int xSpeed){ 
    
    
    this.y=y;
    this.xSpeed = xSpeed;

    object = loadImage("images/boxes.png");
  }
  
  void update(){ 
    draw();
    checkSide();
  }
  
  
  void draw(){
           
    x = x - xSpeed;
   image(object, x, y);
  }
  
  void checkSide() {
    if(x <=0){
      x = width- 50;
    }
  }
  
    
}