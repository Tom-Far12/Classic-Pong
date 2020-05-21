
/**
 *  Score class keeps count of the score
 */
class Score {
   
    float xPos;
    float yPos;
    int scoreCounter = 0;
    String scoreString = "0";
    
    public Score(float x, float y) {
        xPos = x;
        yPos = y;
    }
    
    void showScore() {
       fill(255);
       textSize(50);
       text(getScoreString(), xPos, yPos);
    }
    
    void updatePlayerScore(Opponent opp, Ball ball) {
       
       if(ball.getPosX() > opp.getXPos() && (ball.getPosY() < opp.getYPos() || ball.getPosY() > opp.getYPos())){
         ++scoreCounter;
         scoreString = Integer.toString(scoreCounter/8);
         
       }
       
    }
    
    void updateOpponentScore(Player player, Ball ball) {
     
        if(ball.getPosX() < player.getXPos() && (ball.getPosY() < opp.getYPos() || ball.getPosY() > opp.getYPos())){
          ++scoreCounter;
          scoreString = Integer.toString(scoreCounter/8);
        }
    }
    
    void setScore(int s){
      scoreCounter = s;
    }
    
    float getScore() {
      return scoreCounter;
    }
    
    String getScoreString() {
      return scoreString;
    }
}
