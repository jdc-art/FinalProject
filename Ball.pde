  public class Ball extends Shape {
    
    private final color colour;
    private final float radius;
    private float xSpd, ySpd;
    private boolean gameOver;
    
    Ball(float x, float y, float w, float h) {
      super(x, y, w, h);
      this.colour = color(255, 255, 255);
      this.radius = 9;
      //Ball Physics Stuff
      this.reset();
      this.edgecheck();
      this.move();
      }
    
    void draw() {
     fill(colour);
     ellipse(x, y, radius*2, radius*2);
    }
    
    private void move() { //Moves ball
      x = x + xSpd;
      y = y +ySpd;
    }
    
    private void reset() { //Resets ball after game over
      x = width/2;
      y = height/2;
      //float angle = 46;
      xSpd = random(-10, 10);
      ySpd = 10; 
    }
    
    private void edgecheck() { //Checks if ball hits any edge; game over if ball hits bottom of screen
      if (x < 0 || x > width) {
        xSpd *= -1;
      }
      if (y > height) { //Bottom of screen
        gameOver = true;
        println(gameOver);
        reset();
      }
      if (y < 0) {
       ySpd *= -1;
      }
    }
    
    public boolean checkGameOver() {
        return gameOver;
    }
    
    private float getX() {
      return x;
    }
    private float getY() {
      return y;
    }
    
    public void getBounds(Paddle paddle) {
      float ballX = ball.getX();
      float ballY = ball.getY();
      var distance = dist(ballX, ballY, paddle.x, paddle.y);
      //println(ballX);
      //println(ballY);
      
      if (distance < ball.radius + 20) {
        ySpd *= -1;
        xSpd *= -1;
      } 
    }
  }
