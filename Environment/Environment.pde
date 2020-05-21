/**
 * The Environment class sets up the background and performs
 * the action by the player, opponent, ball movement, and score updates.
 */
 
 private Player player;
 private Opponent opp;
 private Ball ball;
 private Score playerScore;
 private Score opponentScore;
 
 void setup() {
    
  // set the height and width of the environment
  size(800, 500);
  
   // initialize the player, opponent, ball, and score
  player = new Player();
  opp = new Opponent();
  ball = new Ball();
  playerScore = new Score(200, 50);
  opponentScore = new Score(width-250, 50);
}
 
 void draw() {
  
   // sets the background color
  background(0);
 
  // display the score of the player and opponent
  playerScore.showScore();
  opponentScore.showScore();
  
  // show the player and the update the player's steps
  player.show();
  player.update();
  playerScore.updatePlayerScore(opp, ball);
  
  // show the ball and update the ball
  ball.show();
  ball.update();
  
  // show the AI opponent and update the AI
  opp.show();
  opp.update(ball.getPosY());
  opponentScore.updateOpponentScore(player, ball);
  
  // check the movement of the ball when either hitting the player or the
  // AI opponent
  player.checkBallMovement(ball, ball.getPosX(), ball.getPosY());
  opp.checkBallMovement(ball, ball.getPosX(), ball.getPosY());
}

void keyPressed() {
  if(key == 'w'){
     player.movePlayer(-5);
  }
  else if(key == 's') {
     player.movePlayer(5);
  }

}

void keyReleased() {
    player.movePlayer(0);
 }
