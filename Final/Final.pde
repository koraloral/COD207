PImage picture;
PImage picture2;
PImage picture3;

Enemy e1;
Ship s1;

int Enemies = 1;
Enemy[] drops = new Enemy[Enemies];


void setup() {
  size(480, 854);
  background(255);
  smooth();
  noStroke();
  noCursor();
  picture = loadImage("yol.jpg");
  picture2 = loadImage("car.png");
  picture3 = loadImage("truck.png");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    e1 = new Enemy();
  }
  s1 = new Ship();
}

void draw() {
  fill(255, 80);
  rect(0, 0, 480, 854);
  image(picture, 0, 0, width, height);
  
  for (int i = 0; i < drops.length; i++) {
    
    
    drops[i].fall();

    drops[i].getr1();
    drops[i].getr2();
    drops[i].getr3();
    drops[i].getr4();

    drops[i].gett1();
    drops[i].gett2();
    drops[i].gett3();
    drops[i].gett4();

    if (mouseX+30 > drops[i].getr1() && mouseX-30 < drops[i].getr1()+70 && mouseY+40 > drops[i].gett1() && mouseY-40 < drops[i].gett1()+200) {
      stop();
    }
    if (mouseX+30 > drops[i].getr2() && mouseX-30 < drops[i].getr2()+70 && mouseY+40 > drops[i].gett2() && mouseY-40< drops[i].gett2()+200) {
      stop();
    }
    if (mouseX+30 > drops[i].getr3() && mouseX-30 < drops[i].getr3()+70 && mouseY+40 > drops[i].gett3() && mouseY-40 < drops[i].gett3()+200) {
      stop();
    }
    if (mouseX+30 > drops[i].getr4() && mouseX-30 < drops[i].getr4()+70 && mouseY+40 > drops[i].gett4() && mouseY-40 < drops[i].gett4()+200) {
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