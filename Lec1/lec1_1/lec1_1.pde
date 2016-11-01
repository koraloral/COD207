//setup ve draw ilk
int kareW=60;
int kareH=60;

void setup() {
  
  //pencere boyutu
  size(200,200);
  
}

void draw(){
  background(#cccccc); 
  
  //statik
  //rect(200/2 - 30/2,200/2 - 30/2,30,30);
  
  //dinamik
  //rect(width/2 - kareW/2,height/2 - kareH/2,kareW,kareH);
  noStroke();  
  rectMode(CENTER);
 
  fill(#ccccbc);
  rect(width/2,height/2,kareW,kareH);

  fill(#27AE60);
  ellipse(100,100,50,50);
}