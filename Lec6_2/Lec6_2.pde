PImage picture;
PImage picture2;
PImage picture3;
PImage picture4;

void setup() {  
  size(1200, 800);

  picture = loadImage("resim3.png");
  picture2 = loadImage("resim2.png");
  picture3 = loadImage("resim3.png");
  picture4 = loadImage("resim4.png");
}


void draw() {

  background(255);
  
  pushMatrix();
  translate(50, 50);
  rotate(radians(30));
  imageMode(CENTER);
  blendMode(DIFFERENCE);
  for (int i = 0; i < 36; i = i + 1) {
    rotate(radians(10));
    image(picture, 0, 0, width/2, height/2);
  }
  translate(500, 100);
   for (int i = 0; i < 36; i = i + 1) {
    rotate(radians(10));
    image(picture2, 0, 0);
  }
  translate(500, 100);
   for (int i = 0; i < 36; i = i + 1) {
    rotate(radians(10));
    image(picture3, 0, 0, width/2, height/2);
  }
  translate(0, -500);
   for (int i = 0; i < 36; i = i + 1) {
    rotate(radians(10));
    image(picture4, 0, 0, width/2, height/2);
  }

  popMatrix();
}