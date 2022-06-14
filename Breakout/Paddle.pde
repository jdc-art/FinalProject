public class Paddle extends Shape {
  
  color colour;
  float xSpd;
  
  
  Paddle(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(255, 255, 255);
    xSpd = 0;
  }
  
  void draw() {
    fill(colour);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  
  //Set
  void movePaddle(float spd){
    xSpd = spd;
  }
  
  void update() {
    x += xSpd;
    x = constrain(x, w/2, width - w/2);
  }
}
