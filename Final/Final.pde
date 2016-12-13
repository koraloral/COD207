import ddf.minim.*;

Minim min;
AudioPlayer start;
AudioPlayer play;
AudioPlayer end;

PImage picture;
PImage picture2;

PFont startFont;

Ship s1;

int score=0;
int Enemies = 4;

float x1 = 0;
float y1 = 0;
float w1 = 0;
float h1 = 0;

boolean gameStart=false;
boolean failState=false;
boolean buttonState=false;
boolean mouseState=false;

boolean scene1 = true;
boolean scene2 = false;
boolean scene3 = false;

Enemy[] drops = new Enemy[Enemies];

void setup() {
  size(480, 854);
  background(255);
  smooth();
  noStroke();

  min = new Minim(this);
  start = min.loadFile("Beauty-motivational-music.mp3");
  play = min.loadFile("Casual-friday-electronic-beat-music.mp3");
  end = min.loadFile("Sad-instrumental-music.mp3");

  picture = loadImage("yol.jpg");
  picture2 = loadImage("car.png");

  startFont = createFont("BLACEB__.TTF", 32);
  textFont(startFont);

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    drops[i].setr(40+(110*i));
    drops[i].sett(random(-800, -400));
  }

  w1 = 240;
  h1 = 60;
  x1 = width*0.5 - w1 * 0.5;
  y1 = height*0.5 - h1 *0.5;

  initGame();
  s1 = new Ship();
}

void initGame() {
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    drops[i].setr(40+(110*i));
    drops[i].sett(random(-800, -400));
  }
  score = 0;
}

void draw() {
  background(0);
  fill(255, 80);
  rect(0, 0, 480, 854);
  image(picture, 0, 0, width, height);

  if (scene1 == true) {

    start.play();

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
      textFont(startFont);
      textSize(35);
      textAlign(CENTER);
      text("START GAME", width * 0.5, height*0.5 + 15);
      popStyle();
    }
  }

  if (scene2 == true && scene3 == false) {

    if (play.isPlaying() == false) {
      play.rewind();
    }
    start.pause();
    end.pause();
    play.play();

    for (int i = 0; i < drops.length; i++) {

      drops[i].fall();
      showScore();

      if (mouseX+35 > drops[i].getr() && mouseX-35 < drops[i].getr()+70 && mouseY+40 > drops[i].gett() && mouseY-40 < drops[i].gett()+200) {
        failState = true;
      }
    }
    if (mouseX+30 > 480) {
      mouseX = 450;
    }
    if (mouseX-30 < 0) {
      mouseX = 30;
    }
    if (mouseY-40 < 0) {
      mouseY = 40;
    }
    if (mouseY+40 > 854) {
      mouseY = 814;
    }

    s1.draw();

    if (failState == true) {
      scene2 = false;
      scene3 = true;
      buttonState = false;
      mouseState = false;
      gameStart = false;
    }
  }
  if (scene3 == true) {

    if (end.isPlaying() == false) {
      end.rewind();
    }
    start.pause();
    play.pause();
    end.play();

    initGame();
    cursor();
    pushStyle();
    fill(0);
    textFont(startFont);
    textSize(70);
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
    textFont(startFont);
    textSize(35);
    textAlign(CENTER);
    text("RESTART", width * 0.5, height*0.5 + 15);
    popStyle();
  }
}

void showScore() {
  if (scene2 == true && scene3 == false) {
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER);
    text("Score: " + score, width -240, 80);
  }
}

void mouseReleased() {
  if (buttonState == true) {
    mouseState = true;
    scene1 = false;
    scene2 = true;
    scene3 = false;
    gameStart = true;
    failState = false;
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