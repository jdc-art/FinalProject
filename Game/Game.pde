public class Game extends Canvas implements Runnable{
  
  private Thread thread;
  private boolean running = false;
  
  private Window window;
  
  public Game(int width, int height){
    this.window = new Window(width, height, "A", this);
    
    this.start();
  }
  
  private synchronized void start(){
    if (running) return;
    else {
      this.running = true;
      this.thread = new Thread(this);
      this.thread.start();
    }
  }
  private synchronized void stop(){
    if (!running) return;
    try {
      this.thread.join();
    } catch (Exception e) {
        e.printStackTrace();
    }
  }
  
  public void run(){
    while (running) {
      Thread.sleep(17);
      tick();
      render();
    }
  }
  
  private void tick(){
  
  }
  
  private void render(){
    BufferStrategy bs = this.getBufferStrategy();
    
    if (bs == null) {
      this.createBufferStrategy(3);
      return;
    }
    
    Graphics2D g2 = (Graphics2D) bs.getDrawGraphics();
    
    g2.setColor(Color.BLACK);
    g2.fillRect(0, 0, this.window.width(), this.window.height());
    
    g2.dispose();
    bs.show();
  }
  public static void main(String[] args) {
    new Game(800,800);
  }
}
