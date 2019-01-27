class Coins { 
  PImage coins;
  int x = width - 100;
  int y, xSpeed;
  int h, w;
  
  Coins (int y, int xSpeed){ 
    
    
    this.y=y;
    this.xSpeed = xSpeed;
    w = 25;
    h = 25;

    coins = loadImage("images/gold.png");
  }
  
  void update(){ 
    draw();
    checkSide();
  }
  
  
  void draw(){
           
    x = x - xSpeed;
   image(coins, x, y, w, h);
  }
  
  void checkSide() {
    if(x <=0){
      x = width- 50;
    }
  }
  
    
}
