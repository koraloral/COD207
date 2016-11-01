int posx = 0;
int posy = 0;

int moveFactor = 5;

void setup() {
  size(800, 600);
  background(255);
}


void draw() {
  background(255);
  smooth();
  noStroke();
pushMatrix();
translate(posx, posy);
  fill(255, 204, 150);
  ellipse(0, 0, 200, 200);
  ellipse(0-100, 0, 50, 50);
  ellipse(0+100, 0, 50, 50);
  rect(0-50, 0-50, 100, 300);

  fill(#000000);
  ellipse(0-40, 0, 40, 30);
  ellipse(0+40, 0, 40, 30);
  rect(0-50, 0-110, 10, 40);
  rect(0-30, 0-115, 10, 40);
  rect(0-10, 0-117, 10, 40);
  rect(0+10, 0-115, 10, 40);
  rect(0+30, 0-110, 10, 40);
  rect(0-7, 0+35, 15, 20);
  rect(0-50, 0+130, 100, 120);
  
  fill(#FFFFFF);
  ellipse(0-40, 0+5, 20, 20);
  ellipse(0+40, 0+5, 20, 20);
  //rect(0-15, 0+130, 30, 60);
  triangle(0-10,0+130,0+10,0+130,0,0+160);
  triangle(0,0+140,0-15,0+210,0+15,0+210);
  popMatrix();
}
void keyPressed() {

  // BACKSPACE, TAB, ENTER, RETURN, ESC, and DELETE

  if (key == 'a') {
    moveFactor = moveFactor + 2;
  }

  if (key == 's') {
    
    if(moveFactor > 2) {
      
      moveFactor = moveFactor - 2;
    }
    
    println("moveFactor : " + moveFactor);
  }
  

  if (keyCode == LEFT) {
    posx = posx - moveFactor;
  }


  if (keyCode == RIGHT) {
    posx = posx + moveFactor;
  }


  if (keyCode == UP) {
    posy = posy - moveFactor;
  }


  if (keyCode == DOWN) {
    posy = posy + moveFactor;
  }
}