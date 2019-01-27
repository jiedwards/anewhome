int x = 0;
int xspeed = 6;
int life = 3;
PlayerTwo p1;
PlayerThree p2;
Player p3;
Object object;
Coins coins;
PImage blackburnBG;
PImage birminghamBG;
PImage milanBG;
PImage mannyBG;
PImage gameover;
PImage splash;

enum Screen{
  SPLASH, GAME, HIGHSCORE, GAMEOVER //Create a enum list of screens 
};

enum Town{ 
  BLACKBURN, BIRMINGHAM, MANNY, MILAN
};

Screen screen = Screen.SPLASH;
Town town = Town.BLACKBURN;


public void setup(){
  size(1200, 600);   //Sets the screen width and height
   blackburnBG = loadImage("images/blackburnBG.png");
   blackburnBG.resize(12000, height);
   birminghamBG = loadImage("images/birminghamBG.png");
   birminghamBG.resize(12000, height);
   milanBG = loadImage("images/milanBG.jpg");
   milanBG.resize(12000, height);
   mannyBG = loadImage("images/mannyBG.png");
   mannyBG.resize(width, height);
   gameover = loadImage("images/gameover.png");
   gameover.resize(width, height);
   splash = loadImage("images/intro.jpg");
   splash.resize(width, height);
   p1 = new PlayerTwo(20, 2, 10);
   p2 = new PlayerThree(20, 2, 10);
   p3 = new Player(20, 2, 10);
   object = new Object(450, 5);
   coins = new Coins(450, 8);
    
}


public void draw(){
  
  switch (screen){
   case SPLASH:
      image(splash, x, 0);
       if(keyPressed){
          if (key == ' '){
            screen = Screen.GAME;
            town = Town.BLACKBURN;
            x = 0;
            xspeed = 6;
            life = 3;
          }
        }
    
   break;
   
   case GAME:
     switch(town){
       case BLACKBURN:
         image(blackburnBG, x, 0);
          image(blackburnBG, x+blackburnBG.width, 0);
           x -= xspeed; //Moves splash screen background 
          if(x <= -blackburnBG.width + 1000){
            x = -11000;
            object.xSpeed = 0;
            object.x = width;
            coins.xSpeed = 0;
            coins.x = width;
            xspeed = 0;
            fill(255);
            text("Press Space for next level", 200, 200);
            textSize(30);
            if(keyPressed){
              if (key == ' '){
                town = Town.BIRMINGHAM;
                x = 0;
                object.x = width - 50;
              }
            }
          } 
          
          
          
          if(20 == object.x && p1.dy == object.y) {
           System.out.println("BANG");
           x = 0;
           life--;
           if(life == 0){
              screen = Screen.GAMEOVER; 
           }
          } 
          if (20 == coins.x && p1.dy == coins.y) {
            System.out.println("New Life");
            life++;
            coins.x = width + 20;
            coins.xSpeed = 0;
          }
          
          p1.update();
          object.update();
          
          if(x <= -5700){
            coins.update();
          }
          
          fill(255,0,0);
           text("Level = 1", 1000, 47);
          text("Lives = " + life, 1100, 47);
         
          textSize(20);
      break;
      
      case BIRMINGHAM:
           image(birminghamBG, x, 0);
           image(birminghamBG, x+birminghamBG.width, 0);
           xspeed = 8;
           object.xSpeed = 7;
           x -= xspeed; //Moves splash screen background 
           if(x <= -blackburnBG.width + 1000){
            x = -11000;
            object.x = width;
            coins.xSpeed = 0;
            coins.x = width;
            xspeed = 0;
            fill(255);
            text("Press Space for next level", 200, 200);
            textSize(30);
            if(keyPressed){
              if (key == ' '){
                town = Town.MILAN;
                x = 0;
                object.x = width - 50;
              }
            }
          } 
          
          if(20 == object.x && p2.dy == object.y) {
           System.out.println("BANG");
           x = 0;
           life--;
           if(life == 0){
              screen = Screen.GAMEOVER; 
           }
          }
          if (20 == coins.x && p2.dy == coins.y) {
            System.out.println("New Life");
            life++;
            coins.x = width + 20;
            coins.xSpeed = 0;
          }
          
          p2.update();
          object.update();
          
          if(x <= -5700){
            coins.update();
          }
          
          fill(255,0,0);
          text("Level = 2", 1000, 47);
          text("Lives = " + life, 1100, 47);
          
          textSize(20);
       break;
      
      case MANNY:
         image(mannyBG, x, 0);
         if(keyPressed){
            if (key == 'r'){
              screen = Screen.SPLASH;
              town = Town.BLACKBURN;
 
            }
          }
           
           
      
      break;
      
      case MILAN:
          image(milanBG, x, 0);
          image(milanBG, x+milanBG.width, 0);
          xspeed = 10;
          object.xSpeed = 9;
           x -= xspeed; //Moves splash screen background 
          if(x <= -milanBG.width + 1000){
            x = -11000;
            object.xSpeed = 0;
            object.x = width;
            coins.xSpeed = 0;
            coins.x = width;
            xspeed = 0;
            fill(255);
            text("Press Space for next level", 200, 200);
            textSize(30);
            if(keyPressed){
              if (key == ' '){
                town = Town.MANNY;
                x = 0;
                xspeed = 6;
                
              }
            }
          } 
          
          
          
          if(20 == object.x && p3.dy == object.y) {
           System.out.println("BANG");
           x = 0;
           life--;
           if(life == 0){
              screen = Screen.GAMEOVER; 
           }
          }
          if (20 == coins.x && p3.dy == coins.y) {
            System.out.println("New Life");
            life++;
            coins.x = width + 20;
            coins.xSpeed = 0;
          }
          
          p3.update();
          object.update();
          
          if(x <= -5700){
            coins.update();
          }
          
          fill(255,0,0);
          text("Level = 3", 1000, 47);
          text("Lives = " + life, 1100, 47);
          
          textSize(20);
   
      break;
      
     }
   break;
   
   case HIGHSCORE:
   
   
   
   break;
   
   case GAMEOVER:
       image(gameover, x, 0);
       if(keyPressed){
          if (key == ' '){
            screen = Screen.GAME;
            town = Town.BLACKBURN;
            x = 0;
            xspeed = 6;
            life = 3;
          }
        }
   
   break;
  }
   
}
