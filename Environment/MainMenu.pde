/**
 * Main Menu class is to have some separation between the start of the
 * game.
 */
class MainMenu {
     
    private float menuPosX;
    private float menuPosY;
    private boolean isVisible = true;
    
    public MainMenu(boolean v) {
      
        isVisible = v;
        menuPosX = width/2;
        menuPosY = height/4;
    }
  
    public void display() {
       
        PFont font;
     
       if(isVisible == true){
          textAlign(CENTER);
          font = createFont("Georgia", 48);
          fill(255);
          textFont(font);
          text("Pong 2020", menuPosX, menuPosY);
          
          createMenuButtons();
       }
       
    }
    
    public void createMenuButtons() {
      
        textAlign(CENTER);
        fill(255);
        textSize(36);
        text("Enter P to Play", width/2, height/4+100);
    }
    
    public void setMenuVisible(boolean visible){
      isVisible = visible;
    }
}
