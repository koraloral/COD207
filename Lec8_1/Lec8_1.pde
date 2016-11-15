float x = 0;
float y = 0;
float speed = 4.0;
float time=60;

float x1 = 0;
float y1 = 0;
float w1 = 0;
float h1 = 0;

float t = 0;

float locx = 0;
float locy = 0;
float velocityX = 0;
float velocityY = 0;

float charH = 300;
float charW = 250;

float left = 0;
float right = 0;
float up = 0;
float down = 0;
PFont dinFont;
PFont blackFont;

boolean gameStart = false;
boolean failState=false;
boolean buttonState=false;
boolean mouseState=false;

boolean scene1 = true;
boolean scene2 = false;
boolean scene3 = false;

void setup()
{
  size(800, 600);
  w1 = 240;
  h1 = 60;
  x1 = width*0.5 - w1 * 0.5;
  y1 = height*0.5 - h1 *0.5;

  initGame();
}

void initGame() {
  velocityX = random(-5, 5);
  velocityY = random(-5, 5);
  locx = width*0.5;
  locy = height*0.5; 

  t = millis()/1000;
  speed = 2.0;

  x = 0;
  y = 0;
}

void draw() {

  if (scene2 == true && scene3 == false) {
    background(255);
    noStroke();
    x += (right - left) * speed;
    y += (down - up) * speed;

    if (gameStart == true) {  
      locx = locx + velocityX;
      locy = locy + velocityY;
    }
    if (x>675) {
      x=675;
    }  
    if (x<125) {
      x=125;
    }  
    if (y>350) {
      y=350;
    }  
    if (y<117) {
      y=117;
    } 
    pushMatrix();
    fill(255, 204, 150);
    ellipse(x, y, 200, 200);
    ellipse(x-100, y, 50, 50);
    ellipse(x+100, y, 50, 50);
    rect(x-50, y-50, 100, 300);


    fill(#000000);
    ellipse(x-40, y, 40, 30);
    ellipse(x+40, y, 40, 30);
    rect(x-50, y-110, 10, 40);
    rect(x-30, y-115, 10, 40);
    rect(x-10, y-117, 10, 40);
    rect(x+10, y-115, 10, 40);
    rect(x+30, y-110, 10, 40);
    rect(x-7, y+35, 15, 20);
    rect(x-50, y+130, 100, 120);

    fill(#FFFFFF);
    ellipse(x-40, y+5, 20, 20);
    ellipse(x+40, y+5, 20, 20);
    triangle(x-10, y+130, x+10, y+130, x, y+160);
    triangle(x, y+140, x-15, y+210, x+15, y+210);
    popMatrix();

    if (locx-15 < 0 || locx+15 > width) {
      velocityX = velocityX*-1;
    }

    if (locy-15 < 0 || locy+15 > height) {
      velocityY = velocityY*-1;
    }
    if (gameStart == true) {
      pushStyle();
      fill(#000000);
      ellipse(locx, locy, 30, 30);
      popStyle();
    }

    if ((x-125) + charW > locx   && (x-125) < locx   && (y-117) + (charH+66) > locy  && (y-117) < locy ) {
      failState = true;
    } else {
      failState = false;
    }
    fill(255, 0, 0);
    textSize(32);
    textAlign(LEFT);
    text("Speed: " + speed, width - 180, 80);

    if (gameStart == true) {
      pushStyle();
      fill(255, 0, 0);
      textSize(32);
      textAlign(LEFT);
      text("Time: " + time, width - 180, 40);
      popStyle();
      if (time > -1) {
        time = 60 - millis()/1000 + t;
      }
      if (time < 0) {
        failState = true;
      }
    }
    pushStyle();
    noStroke();
    noFill();
    stroke(255, 0, 0);
    rect(x-125, y-117, charW, charH+66);
    popStyle();

    if (failState == true) {
      scene2 = false;
      scene3 = true;
      buttonState = false;
      mouseState = false;
      gameStart = false;
    }
  }
  if (scene1 == true) {
    pushMatrix();
    pushStyle();
    if (buttonState == true) {
      fill(0, 255, 0);
    }
    if (buttonState == false) {
      fill(255, 0, 0);
    }
    if (mouseState == false) {
      rect( x1, y1, w1, h1);
    }
    popStyle();
    popMatrix();

    if (gameStart == false) {
      pushStyle();
      fill(0);

      textSize(35);
      textAlign(CENTER);
      text("START GAME", width * 0.5, height*0.5 + 15);
      popStyle();
    }
  }

  if (scene3 == true) {
    initGame();
    cursor();
    background(255);
    pushStyle();
    fill(0);
    textSize(90);
    textAlign(CENTER);
    text("GAME OVER", width * 0.5, height*0.5 - 50);
    popStyle();

    pushMatrix();
    pushStyle();
    if (buttonState == true) {
      fill(0, 255, 0);
    }
    if (buttonState == false) {
      fill(255, 0, 0);
    }
    if (mouseState == false) {
      rect( x1, y1, w1, h1);
    }
    popStyle();
    popMatrix();

    pushStyle();
    fill(0);
    textSize(35);
    textAlign(CENTER);
    text("RESTART", width * 0.5, height*0.5 + 15);
    popStyle();
  }
}


void mouseReleased() {
  if (buttonState == true) {
    mouseState = true;
    scene1 = false;
    scene2 = true;
    scene3 = false;
    gameStart = true;
    noCursor();
  }
}

void mousePressed() {
  if (mouseX > x1 && mouseX < x1 + w1 && mouseY > y1 && mouseY < y1 + h1 && gameStart == false) {
    buttonState = true;
  } else {
    if (gameStart == false) { 
      buttonState = false;
    }
  }
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      left = 0;
    }
    if (keyCode == RIGHT)
    {
      right = 0;
    }

    if (keyCode == UP)
    {
      up = 0;
    }
    if (keyCode == DOWN)
    {
      down = 0;
    }
  }
}

void keyPressed()
{
  if (gameStart == true) {
    if (key== 'z') {
      speed = speed +1;
    }
    if (key== 'x') {
      speed = speed -1;
    }
    if (key == CODED)
    {
      if (keyCode == LEFT)
      {
        left = 1;
      }
      if (keyCode == RIGHT)
      {
        right = 1;
      }

      if (keyCode == UP)
      {
        up = 1;
      }
      if (keyCode == DOWN)
      {
        down = 1;
      }
    }
    gameStart = true;
  }
}