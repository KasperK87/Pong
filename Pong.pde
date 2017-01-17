//Pong Clone v0.44
//by Kasper Kristensen 09-03-2016

screen currentScreen;
mainMenu mainMenuInstance;
game gameInstance;

int lastTime;
int thisTime;
float dt;

void setup() {  
  size(300,200);
  mainMenuInstance = new mainMenu();
  gameInstance = new game();
  
  currentScreen = mainMenuInstance;
}

void draw() {
  //getting time since last frame
  thisTime = millis() - lastTime;
  lastTime = lastTime+thisTime;
  dt = thisTime/1000.0/2;
  
  currentScreen.update(dt);
  //clear screen
  background(0);
  stroke(200);
  
  
  currentScreen.draw();
}