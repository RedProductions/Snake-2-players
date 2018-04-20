void resetgrid(){
  
  dir = 2;
  dir2 = 2;
  
  speed = startingSpeed;
  
  score = 0;
  score2 = 0;
  
  int sx = int(random(0, lenx/2));
  int sy = int(random(0, leny/2));
  
  int sx2 = int(random(0, lenx/2));
  int sy2 = int(random(leny/2, leny));
  
  int px = int(random(lenx/2 + 1, lenx));
  int py = int(random(0, leny));
  
  for(int i = 0; i < lenx; i++){
    for(int j = 0; j < leny; j++){
      
      grid[i][j] = 0;
      
    }
  }
  
  for(int i = 0; i < lenx*leny; i++){
    
    snakex[i] = -1;
    snakey[i] = -1;
    snakex2[i] = -1;
    snakey2[i] = -1;
    
  }
  
  
  grid[sx][sy] = 2;
  grid[sx2][sy2] = 3;
  
  snakex[0] = sx;
  snakey[0] = sy;
  snakex2[0] = sx2;
  snakey2[0] = sy2;
  
  pointx = px;
  pointy = py;
  
  grid[px][py] = 1;
  
}

void createpoint(){
  
  int px = 0;
  int py = 0;
  
  boolean valid = false;
  
  while(!valid){
    
    px = int(random(0, lenx));
    py = int(random(0, leny));
    
    valid = true;
    
    for(int i = 0; i  < lenx*leny; i++){
      
      if(px == snakex[i] && py == snakey[i]){
        valid = false;
      }else if(px == snakex2[i] && py == snakey2[i]){
        valid = false;
      }
      
    }
    
  }
  
  pointx = px;
  pointy = py;
  
  grid[px][py] = 1;
  
}