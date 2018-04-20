int currentTime = 0;
int pastTime = 0;
int timeGap = 0;

int startingSpeed = 200;
float speed = startingSpeed;
float speedRatio = 0.95;

int refreshRate = 30;
int lastRefreshed = 0;

int lastMoved = 0;


void timeCalc(){
  
  pastTime = currentTime;
  currentTime = millis();
  timeGap = currentTime - pastTime;
  
}