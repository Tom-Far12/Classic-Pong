
/**
 *  Score class keeps count of the score
 */
class Score {
   
    private float xPos;
    private float yPos;
    private int scoreCounter = 0;
    private String scoreString = "0";
    
    public Score(float x, float y) {
        xPos = x;
        yPos = y;
    }
    
    public void showScore() {
       fill(255);
       textSize(50);
       text(getScoreString(), xPos, yPos);
    }
    
    public void updatePlayerScore(Ball ball, Opponent opp, boolean lastTouch) {
       
       if(lastTouch == true && ball.getPosX() > opp.getXPos()){
          player.setPlayerHasBall(false);
          ++scoreCounter;
          scoreString = Integer.toString(scoreCounter);
          lastTouch = false;
       }
       
    }
    
    public void updateOpponentScore(Ball ball, Player player, boolean lastTouch) {
        
        if(lastTouch == true && ball.getPosX() < player.getXPos()){
           opp.setOpponentHasBall(false);
           ++scoreCounter;
           scoreString = Integer.toString(scoreCounter);
           lastTouch = false;
        }
    }
    
    public void setScore(int s){
      scoreCounter = s;
    }
    
    public float getScore() {
      return scoreCounter;
    }
    
    public String getScoreString() {
      return scoreString;
    }
}
