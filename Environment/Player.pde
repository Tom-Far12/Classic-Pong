/**
 * The player class creates the rectangle, the size of the player, the color
 * of the player, and the movement. The movement will only focus on the y-axis.
 */
 
class Player {
 
  float posX;
  float posY;
  float w = 20;
  float h = 80;
  float yChange = 0;
  float dist = 5;          // distance between the ball and the player
  
  // Constructor builds the player
  public Player() {
    
      // set the current positions
      posX = w/2+10;
      posY = height/2; 
  }
  
  void show() {
     fill(255); 
     rectMode(CENTER);
     rect(posX, posY, w, h);
  }
 
  void movePlayer(float steps){
    yChange = steps;
  }
  
  void update() {
    posY += yChange;
    posY = constrain(posY, h/2, height-h/2);
  }
  
  void checkBallMovement(Ball ball, float x, float y) {
     
    float ballX = x;
    float ballY = y;
    
    float y1 = posY + h/2;
    float y2 = posY - h/2;
    
    if(ballY < y1 && ballY > y2 && ballX - dist < posX + w/2){
       ball.setXBallSpeed(2.5); 
    }
  }
  
  float getXPos() {
     return posX; 
  }
  
  float getYPos() {
     return posY; 
  }
}
