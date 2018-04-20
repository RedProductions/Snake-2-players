void update2(float x, float y){
  
  for(int i = score2; i > 0; i--){
    
    snakex2[i] = snakex2[i-1];
    snakey2[i] = snakey2[i-1];
    
  }
  
  snakex2[0] += x;
  snakey2[0] += y;
  
  if(snakex2[0] >= lenx || snakex2[0] < 0){
    dead2 = true;
  }
  if(snakey2[0] >= leny || snakey2[0] < 0){
    dead2 = true;
  }
  
  
  if(snakex2[0] == pointx && snakey2[0] == pointy){
    score2++;
    speed *= speedRatio;
    if(speed < 5){
      speed = 5;
    }
    createpoint();
  }
  
  for(int i = 1; i < lenx*leny; i++){
    if(snakex2[0] == snakex2[i] && snakey2[0] == snakey2[i] && snakex2[i] != -1){
      dead2 = true;
    }
  }
  
  for(int i = 0; i < lenx*leny; i++){
    if(snakex2[0] == snakex[i] && snakey2[0] == snakey[i] && snakex2[i] != -1 && snakex[i] != -1){
      dead2 = true;
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
  
  hx2 = snakex2[0];
  hy2 = snakey2[0];
  dead2Message = "PLAYER 1 WINS  Score: " + score;
  
}