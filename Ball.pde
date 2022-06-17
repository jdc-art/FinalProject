  public class Ball extends Shape {
    
    private final color colour;
    private float xSpd, ySpd, radius;
    private boolean ballOut;
    
    Ball(float x, float y, float w, float h) {
      super(x, y, w, h);
      colour = color(255, 255, 255);
      radius = 9;
      //Ball Physics Stuff
      reset();
      }
    
    void draw() {
     fill(colour);
     ellipse(x, y, radius*2, radius*2);
    }
    
    void move() {
      x = x + xSpd;
      y = y +ySpd;
    }
    
    private void reset() { //Resets ball after game over
      x = width/2;
      y = height/2;
      //float angle = 46;
      xSpd = 0;
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
    
    private float getX() {
      return x;
    }
    private float getY() {
      return y;
    }
    
    public void getBounds(Paddle p) {
      float ballX = ball.getX();
      float ballY = ball.getY();
      
      //println(ballX);
      println(ballY);
      if (ballY > paddle.y) {
        ySpd *= -1;
      }
    }
  }
