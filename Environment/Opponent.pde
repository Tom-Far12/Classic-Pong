
class Opponent {
  
  float xPos;
  float yPos;
  float oppWidth = 20;
  float oppHeight = 80;
  float yOppSpeed = 2.5;
  float dist = 5;            // distance between the ball and the AI
  
  public Opponent() {
    
    xPos = width-oppWidth;
    yPos = height/2;
    
  }
  
  void show() {
     fill(255);
     rectMode(CENTER);
     rect(xPos, yPos, oppWidth, oppHeight);
  }
  
  void update(float y) {
     
     float ballY = y;
     
     if(ballY < yPos){
        yPos = yPos - yOppSpeed; 
     }
     
     if (ballY > yPos){
       yPos = yPos + yOppSpeed;
     }
     
     yPos = constrain(yPos, 0, height);
  }
  
  void checkBallMovement(Ball ball, float x, float y) {
      
     float ballX = x;
     float ballY = y;
     
     float y1 = yPos + oppHeight/2;
     float y2 = yPos - oppHeight/2;
     
     if(ballY < y1 && ballY > y2 && ballX + dist > xPos - oppWidth/2){
         ball.setXBallSpeed(-2.5);
     }
  }
  
  float getXPos() {
    return xPos;
  }
  
  float getYPos() {
    return yPos;
  }
}
