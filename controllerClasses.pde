abstract class controller extends gameObject {
  boolean isPlayer;
  bat actorPointer;
}

public class playerController extends controller{
   public playerController(bat setPointer){
     actorPointer = setPointer;
     isPlayer = true; 
   }
   
   public void update(float dt){
      actorPointer.y = mouseY;
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