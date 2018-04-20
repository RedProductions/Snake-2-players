int ratioX;
int ratioY;
double globalRatio;

int Size = 15;

int lenx;
int leny;

int[][] grid; //0 = empty  1 = point  2 = snake

int[] snakex;
int[] snakey;
int[] snakex2;
int[] snakey2;


void getVars(){
  
  globalRatio = float(width)/float(height);
  
  if(globalRatio == 16f/9f){
    println("Ratio: 16/9");
    ratioX = 16;
    ratioY = 9;
  }else if(globalRatio == 4f/3f){
    println("Ratio: 4/3");
    ratioX = 4;
    ratioY = 3;
  }else if(globalRatio == 1){
    println("Ratio: 1/1");
    ratioX = 1;
    ratioY = 1;
  }else {
    println("Ratio not Found");
    ratioX = 16;
    ratioY = 9;
  }
  
  lenx = ratioX * Size;
  leny = ratioY * Size;
  
  if(lenx < 10 && globalRatio == 1){
    lenx = 10;
    leny = 10;
    println("lenx changed to 10: too small to play");
  }else if(lenx > 50 && globalRatio == 16f/9f){
    lenx = 16 * 3;
    leny = 9 * 3;
    println("Size changed to 3: too big, too slow");
  }
  
  boolean modifiedSize = false;
  
  while(lenx >= width || leny >= height){
    
    Size--;
    lenx = ratioX * Size;
    leny = ratioY * Size;
    
    modifiedSize = true;
    
  }
  
  if(modifiedSize){
    println("Size changed to " + Size + " because lenx >= width or leny >= height");
  }
  
  grid = new int[lenx][leny];
  
  snakex = new int[lenx*leny];
  snakey = new int[lenx*leny];
  snakex2 = new int[lenx*leny];
  snakey2 = new int[lenx*leny];
  
}

int dir = 2; //0 = left  1 = up  2 = right  3 = down
int lastDir = 2;

int dir2 = 2; //0 = left  1 = up  2 = right  3 = down
int lastDir2 = 2;

int score = 0;
int score2 = 0;

int pointx;
int pointy;

int pointx2;
int pointy2;

int hx;
int hy;

int hx2;
int hy2;

boolean starting = true;
String staringMessage = "PRESS TO START";
boolean dead = false;
boolean dead2 = false;
String deadMessage = "PLAYER 2 WINS  Score: " + score2;
String dead2Message = "PLAYER 1 WINS  Score: " + score;
String alldeadMessage = "GAME OVER";
boolean paused = false;
String pauseMessage = "PAUSE";

boolean canPlay = !(dead || dead2 || starting || paused);

float backgroundColor = 0;