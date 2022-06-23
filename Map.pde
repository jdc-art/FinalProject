

public class Map {
  
  public int map[][];
  public int bWidth, bHeight;
  private final color colour;
  
  Map(int row, int col) {
    
    map = new int[row][col];
    
    for (int i=0; i < row; i++) {
      for (int j=0; j < col; j++) {
        map[i][j] = 1;
      }
    }
    
    colour = color(255);
    
    bWidth = 540/col;
    bHeight = 150/row;
  }
  
  public void setBricks(int value, int r, int c){
    map[r][c] = value;
  }
  
  public void draw() {
    
    for (int i=0; i < map.length; i++){
      for (int j=0; j < map[0].length; j++){
        if (map[i][j] > 0) {
          fill(colour);
          rectMode(CENTER);
          rect(j * bWidth + 210, i * bHeight + 100, bWidth, bHeight); //Positioning
        }
      }
    }
  }
  
  public void brickHit(Ball ball) {
    
    for (int i=0; i < map.length; i++) {
      for (int j=0; j < map[0].length; j++) {
        if (map[i][j] > 0) {
          
          int w = bWidth;
          int h = bHeight;
          int brickX = 210 + j * width;
          int brickY = 100 + i * height;
          
          rect(brickX, brickY, w, h);
          
          var distance = dist(ball.x, ball.y, brickX, brickY);
          
           if (distance < ball.radius + 30) {
             map.setBricks(0, i, j);
           }
        }
      }
    }
  }
}
