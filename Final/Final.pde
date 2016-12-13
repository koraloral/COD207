PImage picture;
PImage picture2;

Ship s1;
int score=0;
int Enemies = 3;
Enemy[] drops = new Enemy[Enemies];


void setup() {
  size(480, 854);
  background(255);
  smooth();
  noStroke();
  noCursor();
  picture = loadImage("yol.jpg");
  picture2 = loadImage("car.png");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    drops[i].setr(40+(110*i));
    drops[i].sett(random(-600,-200));

  }
  s1 = new Ship();
}

void draw() {
  background(0);
  fill(255, 80);
  rect(0, 0, 480, 854);
  image(picture, 0, 0, width, height);
  
  for (int i = 0; i < drops.length; i++) {
       
    drops[i].fall();

    showScore();
 

    if (mouseX+30 > drops[i].getr() && mouseX-30 < drops[i].getr()+70 && mouseY+40 > drops[i].gett() && mouseY-40 < drops[i].gett()+200) {
      stop();
    }
   
  }
    if (mouseX+30 > 480){
      mouseX = 450;
    }
    if (mouseX-30 < 0){
      mouseX = 30;
    }
    if (mouseY-40 < 0){
      mouseY = 40;
    }
    if (mouseY+40 > 854){
      mouseY = 814;
    }
  s1.draw();
  
}
void showScore(){
fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER);
    text("Score: " + score, width -240, 80);
}