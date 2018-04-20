void message(String message, boolean hover){
  
  background(#666666);
  
  int messageWidth = int(textWidth(message));
  
  int menuXGap = 10;
  int menuYGap = 10;
  
  int menuWidth = messageWidth + menuXGap*2;
  int menuHeight = 50 + menuYGap * 2;
  
  PVector menuPos = new PVector();
  menuPos.x = width/2 - messageWidth/2 - menuXGap;
  menuPos.y = height/2 - menuHeight/2 - menuYGap;
  
  int buttonWidth = menuWidth - menuXGap*2;
  int buttonHeight = 15;
  
  PVector buttonPos = new PVector();
  buttonPos.x = menuPos.x + menuWidth/2 - buttonWidth/2;
  buttonPos.y = menuPos.y + menuHeight - menuYGap - buttonHeight;
  
  fill(255);
  stroke(0);
  strokeWeight(3);
  
  rect(menuPos.x, menuPos.y, menuWidth, menuHeight);
  
  if(hover){
    fill(85, 75, 255);
  }else {
    fill(85, 255, 255);
  }
  
  rect(buttonPos.x, buttonPos.y, buttonWidth, buttonHeight);
  
  fill(0);
  
  text(message, menuPos.x + menuXGap, menuPos.y + menuYGap);
  
}

boolean inButton(int posX, int posY, String message){
  
  boolean inBound = false;
  
  int messageWidth = int(textWidth(message));
  
  int menuXGap = 10;
  int menuYGap = 10;
  
  int menuWidth = messageWidth + menuXGap*2;
  int menuHeight = 50 + menuYGap * 2;
  
  PVector menuPos = new PVector();
  menuPos.x = width/2 - messageWidth/2 - menuXGap;
  menuPos.y = height/2 - menuHeight/2 - menuYGap;
  
  int buttonWidth = 60;
  int buttonHeight = 15;
  
  PVector buttonPos = new PVector();
  buttonPos.x = menuPos.x + menuWidth/2 - buttonWidth/2;
  buttonPos.y = menuPos.y + menuHeight - menuYGap - buttonHeight;
  
  
  if(posX > buttonPos.x && posX < buttonPos.x + buttonWidth){
    if(posY > buttonPos.y && posY < buttonPos.y + buttonHeight){
      inBound = true;
    }
  }
  
  return inBound;
  
}