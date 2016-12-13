
class Ship {
  float x = 60;
  float y = 80;  

  void draw() {
    image(picture2, mouseX-30, mouseY-40, x, y );
  }
}