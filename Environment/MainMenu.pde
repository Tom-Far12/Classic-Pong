
class MainMenu {
     
    float menuPosX;
    float menuPosY;
    boolean isVisible = true;
    
    public MainMenu(boolean v) {
      
        isVisible = v;
        menuPosX = width/2;
        menuPosY = height/4;
    }
  
    void display() {
       
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
    
    void createMenuButtons() {
      
        textAlign(CENTER);
        fill(255);
        textSize(36);
        text("Enter P to Play", width/2, height/4+100);
    }
    
    void setMenuVisible(boolean visible){
      isVisible = visible;
    }
}
