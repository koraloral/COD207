float x = 0;
float y = 0;
float speed = 4.0;
float time=60;

// store whether key pressed or released in float variables
// 1 is pressed, 0 is not pressed
float left = 0;
float right = 0;
float up = 0;
float down = 0;
PFont dinFont;
PFont blackFont;

boolean gameStart = false;
void setup()
{
  size(800, 600);
  // initialize font
}

void draw() {
  background(255);
  smooth();
  noStroke();
  
  
  pushMatrix();
  //translate(posx, posy);
  
  if(x>675){
    x=675;
  }  
  if(x<125){
    x=125;
  }  
  if(y>350){
    y=350;
  }  
  if(y<117){
    y=117;
  }  
  fill(255, 50, 0);

  textSize(32);
  textAlign(LEFT);
  text("SPEED : " + speed, width - 180, 40);


  
  textSize(32);
  textAlign(LEFT);
  text("TIME : " + time, width - 180, 70);
  time-=1;
  
  if(time>=0){
    time=60-millis()/1000;
  }
  
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
  //rect(0-15, 0+130, 30, 60);
  triangle(x-10, y+130, x+10, y+130, x, y+160);
  triangle(x, y+140, x-15, y+210, x+15, y+210);
  popMatrix();


  // if both keys pressed, right - left is 0.
  // if left pressed 0 - 1 is -1 so negative x direction.
  // multiply this by speed to make the amount of 
  // pixels moved equal to speed.
  x += (right - left) * speed;
  y += (down - up) * speed;
  if (gameStart == false) {
    fill(0);
    textSize(90);
    textAlign(CENTER);
    text("START GAME", width * 0.5, height*0.5);
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
  if(key== 'z'){
    speed = speed +1;
}
  if(key== 'x'){
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