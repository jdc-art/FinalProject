
Ball ball;
Paddle paddle;
Map map;
Menu title;
Menu instruct;

//Game State for Menu

public enum State {
  menu,
  game
}

private State state = State.menu;

void setup() {
  size(900, 900);
  ball = new Ball(width/2, height/2, width/30, height/30); //Ball sizes
  paddle = new Paddle(width/2, height, width/8, height/30);
  map = new Map(3, 8);
  title = new Menu(width/5, height/10, width*3/5, height/10, "Breakout", 55); //Title
  instruct = new Menu(width/5, height/2, width*3/5, height/10, "Click anywhere to play.",20);
}

void draw() {
  background(0);
  
  
  if (state == State.game) { //Initializes game after user presses 'Play'
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
    
  } else if (state == State.menu) { //Menu
    
    title.draw();
    instruct.draw();
  }
}

void keyPressed() {
  if (state == State.game) {
    if (key == 'a') {
    paddle.movePaddle(-15);
  } else if (key == 'd') {
    paddle.movePaddle(15);
  }
  }
}

void keyReleased() {
  if (state == State.game) {
    paddle.movePaddle(0);
  }
}

void mouseClicked() {
  if (state == State.menu) {
    state = State.game;
  }
}
