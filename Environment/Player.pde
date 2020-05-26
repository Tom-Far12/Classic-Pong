/**
 * The player class creates the rectangle, the size of the player, the color
 * of the player, and the movement. The movement will only focus on the y-axis.
 */

//import java.util.Random;
 
class Player {
 
    private float posX;
    private float posY;
    private float w = 20;
    private float h = 80;
    private float yChange = 0;
    private float dist = 5;          // distance between the ball and the player
    private boolean hasBall;
    
    // Constructor builds the player
    public Player() {
      
        // set the current positions
        posX = w/2+10;
        posY = height/2; 
        hasBall = false;
    }
    
    public void show() {
       fill(255); 
       rectMode(CENTER);
       rect(posX, posY, w, h);
    }
   
    public void movePlayer(float steps){
      yChange = steps;
    }
    
    public void update() {
      posY += yChange;
      posY = constrain(posY, h/2, height-h/2);
    }
    
    public void checkBallMovement(Ball ball, float x, float y) {
      
      Random rand = new Random();
      
      float ballX = x;
      float ballY = y;
      
      float y1 = posY + h/2;
      float y2 = posY - h/2;
      
      if(ballY < y1 && ballY > y2 && ballX - dist < posX + w/2){
         
         int randX = rand.nextInt(10) * 2;
         int randY = rand.nextInt(6) * 2;
         
         ball.setXBallSpeed(randX); 
         ball.setYBallSpeed(randY);
         hasBall = true;
         opp.setOpponentHasBall(false);          // opp is set in Enviroment
      }
    }
    
    public void setPlayerHasBall(boolean isBall) {
       hasBall = isBall; 
    }
    
    public float getXPos() {
       return posX; 
    }
    
    public float getYPos() {
       return posY; 
    }
    
    public boolean isPlayerHasBall() {
      return hasBall;
    }
}
