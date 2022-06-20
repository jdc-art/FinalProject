public class Map {

  public int cols, rows;
  
  Map(int cols, int rows) {
    this.cols = cols;
    this.rows = rows;
  }
  
  public void draw() { //Draws map
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        float x = j * 30; //rows
        float y = i * 30; //cols
        stroke(0);
        fill(255);
        rect(x, y, 30, 30);
        rectMode(CENTER);
      }
    }
  }
  
  public void getBounds(Ball ball) {
    
  }
}
