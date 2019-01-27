class PlayerThree { 
  PImage player;
  int x,y, moveY, playerWidth, spriteWidth, playerHeight, counter, sy, dy;
  
  PlayerThree (int x, int y, int moveY){ 
    this.playerWidth = 64;
    this.spriteWidth = 442;
    this.playerHeight = 100;
    this.x=x;
    this.y=y;
    this.sy=y;
    this.dy = 450;
    this.moveY=moveY;
    player=loadImage("images/jacob.png");
  }
  
  void update(){ 
    draw();
    //move();
  }
  
  
  void draw(){
   
   counter++;
  if(counter % 8 == 0){
    
    x = x + playerWidth;
    
    if(x >= spriteWidth){
     x = 0; 
    }
    
  }
    copy(player,x,sy,playerWidth,playerHeight,15,dy,80,135);
 
    
    if(mousePressed == true){
      while(dy > 250){
        dy-=moveY;
      }
      mousePressed = false;
    } 
    else { 
      //dy++;
      if (dy < 450){
         dy = dy + moveY / 2; 
      }
    }

  }
  
  
/*  void move(){ 
    if(y>=425){ 
      y-=moveY;
    }
    else if(y<=0){ 
      y+=moveY;
    }
  }*/
  
}
