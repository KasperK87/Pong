abstract class controller extends gameObject {
  boolean isPlayer;
  bat actorPointer;
}

public class playerController extends controller{
  float playerPosition = height/2;
   public playerController(bat setPointer){
     actorPointer = setPointer;
     isPlayer = true; 
   }

   public void update(float dt){
      actorPointer.y = playerPosition;
      
      if (keyPressed == true){
          if(key == 'w' || key == 'W'){
         playerPosition -= height/30;
       } else if(key == 's' || key == 'S') {
         playerPosition += height/30;
       }
      if (playerPosition >= height){
        playerPosition = height;
      } else if (playerPosition <= 0){
        playerPosition = 0;
      }
     }
   }

}
public class player2Controller extends controller{
  float player2Position = height/2;
   public player2Controller(bat setPointer){
     actorPointer = setPointer;
     isPlayer = true; 
   }

   public void update(float dt){
      actorPointer.y = player2Position;
      
      if (keyPressed == true){
          if(key == 'o' || key == 'O'){
         player2Position -= height/30;
       } else if(key == 'l' || key == 'L') {
         player2Position += height/30;
       }
      if (player2Position >= height){
        player2Position = height;
      } else if (player2Position <= 0){
        player2Position = 0;
      }
     }
   }

}

public class aiController extends controller{
  ball ballPointer;
  
  public aiController(bat setPointer, ball setBallPointer){
     actorPointer = setPointer;
     ballPointer = setBallPointer;
     isPlayer = false; 
   }
   
  public void update(float dt){
      if (ballPointer.y < actorPointer.y) {
        actorPointer.y -= 300*dt;
      } else if (ballPointer.y > actorPointer.y) {
        actorPointer.y += 300*dt;
      }
   } 
}