public class Brick extends Shape {
  //Globals
  color colour;
  
  
  Brick(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(255, 255, 200);
  }
  
  public void draw() {
    fill(colour);
    rect(x, y, w, h);
  }
}
