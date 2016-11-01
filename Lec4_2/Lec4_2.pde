int posx = 0;
int posy = 0;

int moveFactor = 5;

void setup() {
  size(800, 600);
}



void draw() {

  background(255);

  pushMatrix();
  translate(posx, posy);
  //scale(mouseX*0.005,mouseX*0.005);
  fill(255);
  rect(0, 0, 300, 200);
  fill(0);
  ellipse(70, 70, 40, 40);
  ellipse(300 - 70, 70, 40, 40);

  rect(50, 26, 40, 10);
  rect(300 - 50 - 40, 26, 40, 10);
  popMatrix();
  //println(mouseX + " x " + mouseY);

  /*
  if(posx > 100 && posx < 300) {
   println("100 u gectin");
   moveFactor = 15;
   }*/
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