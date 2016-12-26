
class Ship {
  PImage resim;
  float x = 70;
  float y = 100;  
  String []car={"car.png", "car2.png", "car3.png", "car4.png"};

  Ship() {
    int index=int(random(0, car.length));
    resim=loadImage(car[index]);
  } 
  void GenerateCar() {

    int index=int(random(0, car.length));
    resim=loadImage(car[index]);
  }

  void draw() {
    image(resim, mouseX-35, mouseY-50, x, y );
  }
}