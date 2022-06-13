public class Paddle extends Shape {
  
  color colour;
  
  Paddle(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(255, 255, 255);
  }
  
  void draw() {
    fill(colour);
    rect(x, y, w, h);
  }
}
