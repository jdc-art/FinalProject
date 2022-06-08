public class Window extends Canvas{
  
  private JFrame framel
  
  public Window(int width, int height, String title, Game game){
    this.frame = new JFrame(title);
    
    this.frame.setSize(width, height);
    
    this.frame.setDefaultCloseOperation(3);
    
    this.frame.setResizable(false);
    
    this.frame.add(game);
    
    this.frame.setVisible(true);
  }
  
  public int width(){
    return this.frame.getWidth();
  }
  
  public int height(){
    return this.frame.getHeight();
  }
}
