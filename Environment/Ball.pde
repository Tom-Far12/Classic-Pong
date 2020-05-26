
import java.util.*;

class Ball {
 
    private PVector v1;
    private float posX;
    private float posY;
    private float ballWidth = 20;
    private float ballHeight = 20;
    private float xballSpeed = 2.5;
    private float yballSpeed = 3;
    private float bRS;            // rotation speed
    
    public Ball() {
    
      posX = width/2;
      posY = height/2;
      
      v1 = new PVector(posX, posY);
      
    }
    
    public void show() {
      fill(255);
      ellipseMode(CENTER);
      ellipse(v1.x, v1.y, ballWidth, ballHeight);
    }
    
    public void update() {
      v1.x = v1.x + xballSpeed;
      v1.y = v1.y + yballSpeed;
      
      if(v1.y < 0 || v1.y > height){
        yballSpeed *= -1;
      }
      if(v1.x < 0 || v1.x > width) {
        reset();
      }
    }
    
    public void reset() {
       posX = width/2;
       posY = height/2;
       
       v1.x = posX;
       v1.y = posY;
       
       setXBallSpeed(2.5);
       setYBallSpeed(3);
    }
    
    public void setXBallSpeed(float speed) {
        xballSpeed = speed;
    }
    
    public void setYBallSpeed(float speed) {
        yballSpeed = speed;
    }
    
    public float getPosX() {
      return v1.x;
    }
    
    public float getPosY() {
      return v1.y;
    }
    
    public float getXBallSpeed() {
      return xballSpeed;
    }
}
