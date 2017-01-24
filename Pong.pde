//import sound libary
import processing.sound.*;
SoundFile file;
SoundFile file2;
SoundFile file3;
SoundFile file4;

//Pong Clone v0.2
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
  
   //importing the sound file from the computer
  file= new SoundFile(this, "Super Stardust HD lave music Theme.mp3");
  //playing the mp3 file
      file.play();
      
      //importing the sound file from the computer
  file2= new SoundFile(this, "Lose.mp3");
  
   //importing the sound file from the computer
  file3= new SoundFile(this, "Pan.mp3");
  
     //importing the sound file from the computer
  file4= new SoundFile(this, "Light.mp3");
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