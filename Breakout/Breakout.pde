Ball ball;
Paddle paddle;
Brick brick;

void setup() {
  size(900, 900);
  ball = new Ball(900/2, 900/2, 15, 15); //Sexy Ball
  paddle = new Paddle(375, 800, 150, 15);
  brick = new Brick(900/2, 200, 20, 20);
}

void draw() {
  background(0);
  ball.draw();
  paddle.draw();
  brick.draw();
}

void keyPressed() {
}
