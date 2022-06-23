public class Menu {
  
  private final String[] fontList = PFont.list();
  private String text;
  private int titleX, titleY, tWidth, tHeight, textSize;
  private final color colour;
  private PFont titleFont = createFont("Yu Gothic UI Semibold", 55);
  
  //printArray(fontList);
  
  Menu(int x, int y, int w, int h, String text, int textSize){
    
    this.titleX = x;
    this.titleY = y;
    this.tWidth = w;
    this.tHeight = h;
    this.text = text;
    this.textSize = textSize;
    
    colour = color(255);
  }
  
  public void draw() {
    fill(colour);
    textAlign(CENTER, CENTER);
    textFont(titleFont, textSize);
    text(text, titleX, titleY, tWidth, tHeight); 
  }
}
