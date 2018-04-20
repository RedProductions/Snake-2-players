void keyPressed(){
  
  int tempDir = dir;
  int tempDir2 = dir2;
  
  if(key == ENTER){
    
    if(starting || dead || dead2){
      starting = false;
      dead = false;
      dead2 = false;
      resetgrid();
    }else if(paused){
      paused = false;
    }
    
  }else if(key == BACKSPACE){
    
    paused = !paused;
    
  }else if(key == 'a'){
    
    if(dir2 != 2){
      dir2 = 0;
    }
    
  }else if(key == 'w'){
    if(dir2 != 3){
      dir2 = 1;
    }
  }else if(key == 'd'){
    if(dir2 != 0){
      dir2 = 2;
    }
  }else if(key == 's'){
    if(dir2 != 1){
      dir2 = 3;
    }
  }else if(key == CODED){
    if(keyCode == LEFT){
      if(dir != 2){
        dir = 0;
      }
    }else if(keyCode == UP){
      if(dir != 3){
        dir = 1;
      }
    }else if(keyCode == RIGHT){
      if(dir != 0){
        dir = 2;
      }
    }else if(keyCode == DOWN){
      if(dir != 1){
        dir = 3;
      }
    }
  }
  
  if(abs(dir-lastDir) == 2){
    dir = tempDir;
  }
  
  if(abs(dir2-lastDir2) == 2){
    dir2 = tempDir2;
  }
  
}


void mousePressed(){
  
  if(dead){
    if(inButton(mouseX, mouseY, deadMessage)){
      dead = false;
      resetgrid();
    }
  }
  
  if(dead2){
    if(inButton(mouseX, mouseY, dead2Message)){
      dead2 = false;
      resetgrid();
    }
  }
  
  if(starting){
    if(inButton(mouseX, mouseY, staringMessage)){
      starting = false;
    }
  }
  
  if(paused){
    if(inButton(mouseX, mouseY, pauseMessage)){
      paused = false;
    }
  }
  
}