
import java.util.*;

class Ball {
 
  PVector v1;
  
  float posX;
  float posY;
  float ballWidth = 20;
  float ballHeight = 20;
  
  float xballSpeed = 2.5;
  float yballSpeed = 3;
  float bRS;            // rotation speed
  
  public Ball() {
  
    posX = width/2;
    posY = height/2;
    
    v1 = new PVector(posX, posY);
    
  }
  
  void show() {
    fill(255);
    ellipseMode(CENTER);
    ellipse(v1.x, v1.y, ballWidth, ballHeight);
  }
  
  void update() {
    v1.x = v1.x + xballSpeed;
    v1.y = v1.y + yballSpeed;
    
    if(v1.y < 0 || v1.y > height){
      yballSpeed *= -1;
    }
    if(v1.x < 0 || v1.x > width) {
      reset();
    }
  }
  
  void reset() {
     posX = width/2;
     posY = height/2;
     
     v1.x = posX;
     v1.y = posY;
  }
  
  void setXBallSpeed(float speed) {
      xballSpeed = speed;
  }
  
  float getPosX() {
    return v1.x;
  }
  
  float getPosY() {
    return v1.y;
  }
  
  float getXBallSpeed() {
    return xballSpeed;
  }
}
