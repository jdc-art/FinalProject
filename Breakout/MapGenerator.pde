class MapGenerator {
  int map [][]; //Build breakout maps with array?
  int brickWidth;
  int brickHeight;
  
  MapGenerator(int row, int col) {
    map = new int[row][col];
    for (int []map1 : map) {
      for(int i=0; j < map[0].length; i++){
        map1[i] = 1;
      }
    }
    brickWidth = 900/col;
    brickHeight = 900/row;
  }
  
  void draw() {
  
  }
}
