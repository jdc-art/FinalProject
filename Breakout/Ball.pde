public class Ball extends Shape {
  
  color colour;
  float xSpd, ySpd;
  boolean ballOut;
  
  Ball(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(255, 255, 255);
    //Ball Physics Stuff
    reset();
    }
  
  void draw() {
   fill(colour);
   ellipse(x, y, w, h);
  }
  
  int randomInt() { //Gets a random number through 1 and 5
    return int(random(1, 5));
  }
  
  void move() {
    x = x + xSpd;
    y = y +ySpd;
  }
  
  void reset() { //Resets ball after game over
    x = width/2;
    y = height/2;
    //float angle = 46;
    xSpd = random(-10, 10); 
    ySpd = 10; 
  }
  
  void edgecheck() {
    if (x < 0 || x > width) {
      xSpd *= -1;
    }
    if (y < 0) {
     ySpd *= -1;
    }
    if (y > height) {
      ballOut = true;
      reset();
    } //Bottom of screen
  }
  
  void hitsPaddle(Paddle paddle) {
  }
}
