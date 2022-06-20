public class Paddle extends Shape {
  
  private final color colour;
  private float xSpd;
  
  Paddle(float x, float y, float w, float h) {
    super(x, y, w, h);
    this.colour = color(255, 255, 255);
    this.xSpd = 0; //Start
  }
  
  public void draw() {
    fill(colour);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  
  //Set
  public void movePaddle(float spd){
    xSpd = spd;
  }
  
  public void update() {
    x += xSpd;
    x = constrain(x, w/2, width - w/2);
  }
}
