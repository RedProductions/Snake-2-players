void showAll(){
  
  background(255);
  strokeWeight(2);
  
  for(int i = 0; i < lenx; i++){
    for(int j = 0; j < leny; j++){
      
      float x = width/float(lenx);
      float y = height/float(leny);
      
      if(grid[i][j] != 0){
        
        if(grid[i][j] == 1){
          fill(195, 255, 255);
        }else if(grid[i][j] == 2){
          
          if(i == hx && j == hy){
            fill(0, 255, 255);
          }else {
            fill(85, 255, 255);
          }
          
        }else if(grid[i][j] == 3){
          
          if(i == hx2 && j == hy2){
            fill(50, 255, 255);
          }else {
            fill(125, 255, 255);
          }
          
        }
        
        stroke(0);
        rect(float(i) * x, float(j) * y, x, y);
        
      }
      
    }
  }
  
}

void globalMessage(){
  
  if(dead && dead2){
    if(score > score2){
      if(inButton(mouseX, mouseY, dead2Message)){
        message(deadMessage, true);
      }else {
        message(deadMessage, false);
      }
    }else if(score2 > score){
      if(inButton(mouseX, mouseY, deadMessage)){
        message(dead2Message, true);
      }else {
        message(dead2Message, false);
      }
    }else {
      if(inButton(mouseX, mouseY, alldeadMessage)){
        message(alldeadMessage, true);
      }else {
        message(alldeadMessage, false);
      }
    }
  }else if(dead){
    if(inButton(mouseX, mouseY, deadMessage)){
      message(deadMessage, true);
    }else {
      message(deadMessage, false);
    }
  }else if(dead2){
    if(inButton(mouseX, mouseY, dead2Message)){
      message(dead2Message, true);
    }else {
      message(dead2Message, false);
    }
  }else if(starting){
    if(inButton(mouseX, mouseY, staringMessage)){
      message(staringMessage, true);
    }else {
      message(staringMessage, false);
    }
  }else if(paused){
    if(inButton(mouseX, mouseY, pauseMessage)){
      message(pauseMessage, true);
    }else {
      message(pauseMessage, false);
    }
  }
  
}