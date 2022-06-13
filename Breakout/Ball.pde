public class Ball extends Shape {
  
  color colour;
  float xSpd, ySpd, xDir = 0, yDir = 0, moveX, moveY;
  boolean ballOut;
  
  Ball(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(255, 255, 255);
    //Ball Physics Stuff
    this.xSpd = randomInt();
    this.ySpd = randomInt();
    while (xDir == 0) {
      this.xDir = int(random(-3, -1));
    }
    while (yDir == 0) {
      this.yDir = int(random(-3, -1));
      this.ballOut = false;
    }
  }
  
  void draw() {
   fill(colour);
   ellipse(x, y, w, h);
   play();
  }
  
  int randomInt() { //Gets a random number through 1 and 5
    return int(random(1, 5));
  }
  
  void play() { //Ball renders and actually moves instead of sitting pretty
  
    //Bottom detection
    if (y < (height*0)) {
      ballOut = true;
    }
    //Bounce off wall
    if (x < (width*0) + w || x > width - w || y <= height) {
      yDir = yDir * (-1);
    }
    //Moving
    if (ballOut == true) {
    } else {
      moveX = xSpd*xDir;
      moveY = ySpd*yDir;
      x += moveX;
      y += moveY;
    }
  }
}
