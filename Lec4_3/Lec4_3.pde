void setup() {
  size(800, 600);
  background(255);
}


void draw() {
  background(255);
  smooth();
  noStroke();

  fill(255, 204, 150);
  ellipse(mouseX, mouseY, 200, 200);
  ellipse(mouseX-100, mouseY, 50, 50);
  ellipse(mouseX+100, mouseY, 50, 50);
  rect(mouseX-50, mouseY-50, 100, 300);

  fill(#000000);
  ellipse(mouseX-40, mouseY, 40, 30);
  ellipse(mouseX+40, mouseY, 40, 30);
  rect(mouseX-50, mouseY-110, 10, 40);
  rect(mouseX-30, mouseY-115, 10, 40);
  rect(mouseX-10, mouseY-117, 10, 40);
  rect(mouseX+10, mouseY-115, 10, 40);
  rect(mouseX+30, mouseY-110, 10, 40);
  rect(mouseX-7, mouseY+35, 15, 20);
  rect(mouseX-50, mouseY+130, 100, 120);
  
  fill(#FFFFFF);
  ellipse(mouseX-40, mouseY+5, 20, 20);
  ellipse(mouseX+40, mouseY+5, 20, 20);
  //rect(mouseX-15, mouseY+130, 30, 60);
  triangle(mouseX-10,mouseY+130,mouseX+10,mouseY+130,mouseX,mouseY+160);
  triangle(mouseX,mouseY+140,mouseX-15,mouseY+210,mouseX+15,mouseY+210);
}