void setup() {
  size(800,600);
  background(255);
}


void draw() {
  background(255);
  
  
  
  
  noStroke();
  fill(255,204,0);
  ellipse(mouseX,mouseY,200,200);
  
  stroke(#000000);
  // rgba
  fill(255,30,70,255);
  rectMode(CENTER);
  rect(width*0.5,height*0.5, 100,100);
  
  fill(255,30,70,180);
  rectMode(CENTER);
  rect(width*0.5,height*0.5 + 100, 100,100);
  
  pushMatrix();
  translate(0,-(height*0.5 + 200) + 50);
  noStroke();
  fill(255,30,70,80);
  rectMode(CENTER);
  rect(width*0.5,height*0.5 + 200, 100,100);
  popMatrix();
  
  fill(0,200,0);
  rectMode(CORNER);
  rect(0,0,100,100);
}