Ball ball;
Paddle paddle;
Brick brick;

void setup() {
  size(900, 900);
  ball = new Ball(width/2, height/2, 15, 15); //Sexy Ball
  paddle = new Paddle(width/2, 800, 110, 10);
  brick = new Brick(900/2, 200, 20, 20);
}

void draw() {
  background(0);
  
  ball.getBounds(paddle);
  
  paddle.draw();
  paddle.update();
  
  ball.move();
  ball.edgecheck();
  ball.draw();
}

void keyPressed() {
  if (key == 'a') {
    paddle.movePaddle(-15);
  } else if (key == 'd') {
    paddle.movePaddle(15);
  }
}
