void move(){
  
  float x = 0;
  float y = 0;
  
  float x2 = 0;
  float y2 = 0;
  
  if(dir == 0){
    x--;
  }else if(dir == 1){
    y--;
  }else if(dir == 2){
    x++;
  }else if(dir == 3){
    y++;
  }
  
  if(dir2 == 0){
    x2--;
  }else if(dir2 == 1){
    y2--;
  }else if(dir2 == 2){
    x2++;
  }else if(dir2 == 3){
    y2++;
  }
  
  lastDir = dir;
  lastDir2 = dir2;
  
  update2(x2, y2);
  update(x, y);
  
}