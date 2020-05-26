
/**
 * Opponent class is a simple AI that follows the ball movement.
 */
class Opponent {
    
    private float xPos;
    private float yPos;
    private float oppWidth = 20;
    private float oppHeight = 80;
    private float yOppSpeed = 5;
    private float dist = 5;            // distance between the ball and the AI
    private boolean hasBall;
    
    public Opponent() {
      
      xPos = width-oppWidth;
      yPos = height/2;
      hasBall = false;
      
    }
    
    public void show() {
       fill(255);
       rectMode(CENTER);
       rect(xPos, yPos, oppWidth, oppHeight);
    }
    
    // Update the AI's y when the position of the ball's y is greater
    // or less than the position of the AI.
    public void update(float y) {
       
       float ballY = y;
       
       if(ballY < yPos){
          yPos = yPos - yOppSpeed; 
       }
       
       if (ballY > yPos){
         yPos = yPos + yOppSpeed;
       }
       
       // keep the AI within the display height
       yPos = constrain(yPos, 0, height);
    }
    
    public void checkBallMovement(Ball ball, float x, float y) {
       
       Random rand = new Random();
       
       float ballX = x;
       float ballY = y;
       
       float y1 = yPos + oppHeight/2;
       float y2 = yPos - oppHeight/2;
       
       if(ballY < y1 && ballY > y2 && ballX + dist > xPos - oppWidth/2){
           
           int randX = rand.nextInt(10) * -2;
           int randY = rand.nextInt(6) * 2;
           
           ball.setXBallSpeed(randX);
           ball.setYBallSpeed(randY);
           hasBall = true;
           player.setPlayerHasBall(false);            // player is set in the Environment
       }
    }
    
    public void setOpponentHasBall(boolean isBall) {
       hasBall = isBall;
    }
    
    public float getXPos() {
      return xPos;
    }
    
    public float getYPos() {
      return yPos;
    }
    
    public boolean isOpponentHasBall() {
      return hasBall; 
    }
}
