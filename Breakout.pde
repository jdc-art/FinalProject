//Imports
import javax.swing.Timer; //For timer

Ball ball;
Paddle paddle;;
Map map;
Timer timer;

void setup() {
  size(900, 900);
  ball = new Ball(width/2, height/2, width/30, height/30); //Ball sizes
  paddle = new Paddle(width/2, height, width/8, height/30);
  map = new Map(10, 31);
}

void draw() {
  background(0);
  //Hitbox
  ball.getBounds(paddle);
  //Paddle init
  paddle.draw();
  paddle.update();
  //Ball init
  ball.draw();
  ball.move();
  ball.edgecheck();
  //Map init
  map.draw();
}

void keyPressed() {
  if (key == 'a') {
    paddle.movePaddle(-15);
  } else if (key == 'd') {
    paddle.movePaddle(15);
  }
}

void keyReleased() {
  paddle.movePaddle(0);
}
