class Ship {
  float x = 30;
  float y = 30;
  void draw(){
  fill(#FF0000);
  ellipse(mouseX, mouseY, x, y);
  }
}