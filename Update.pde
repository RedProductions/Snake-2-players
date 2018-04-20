void update(float x, float y){
  
  for(int i = score; i > 0; i--){
    
    snakex[i] = snakex[i-1];
    snakey[i] = snakey[i-1];
    
  }
  
  snakex[0] += x;
  snakey[0] += y;
  
  if(snakex[0] >= lenx || snakex[0] < 0){
    dead = true;
  }
  if(snakey[0] >= leny || snakey[0] < 0){
    dead = true;
  }
  
  for(int i = 0; i < lenx; i++){
    for(int j = 0; j < leny; j++){
      
      grid[i][j] = 0;
      
    }
  }
  
  grid[pointx][pointy] = 1;
  
  
  for(int i = 0; i < lenx*leny; i++){
    
    if(snakex[i] != -1 && snakey[i] != -1 && !dead){
      grid[snakex[i]][snakey[i]] = 2;
    }
    if(snakex2[i] != -1 && snakey2[i] != -1 && !dead2){
      grid[snakex2[i]][snakey2[i]] = 3;
    }
    
  }
  
  
  if(snakex[0] == pointx && snakey[0] == pointy){
    score++;
    speed *= speedRatio;
    if(speed < 5){
      speed = 5;
    }
    createpoint();
  }
  
  for(int i = 1; i < lenx*leny; i++){
    if(snakex[0] == snakex[i] && snakey[0] == snakey[i] && snakex[i] != -1){
      dead = true;
    }
  }
  
  for(int i = 0; i < lenx*leny; i++){
    if(snakex[0] == snakex2[i] && snakey[0] == snakey2[i] && snakex2[i] != -1 && snakex[i] != -1){
      dead = true;
    }
  }
  
  for(int i = 1; i < lenx*leny; i++){
    for(int j = 1; j < lenx*leny; j++){
      if(snakex[j] == snakex2[i] && snakey[j] == snakey2[i] && snakex[j] != -1 && snakex2[i] != -1){
        dead = true;
        dead2 = true;
      }
    }
  }
  
  if(snakex[0] == snakex2[0] && snakey[0] == snakey2[0]){
    dead = true;
    dead2 = true;
  }
  
  hx = snakex[0];
  hy = snakey[0];
  
  deadMessage = "PLAYER 2 WINS  Score: " + score;
  
}