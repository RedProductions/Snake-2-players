void setup(){
  
  size(800, 800);
  
  //fullScreen();
  
  getVars();
  
  frameRate(120);
  
  noStroke();
  
  resetgrid();
  
  textAlign(LEFT, TOP);
  textSize(15);
  
  colorMode(HSB);
  
}


void draw(){
  
  timeCalc();
  
  globalMessage();
  
  canPlay = !(dead || dead2 || starting || paused);
  
  if(canPlay){
    if(currentTime - lastRefreshed >= refreshRate){
      lastRefreshed = currentTime;
      showAll();
    }
    
    if(currentTime - lastMoved >= speed){
      lastMoved = currentTime;
      move();
    }
  }
  
}