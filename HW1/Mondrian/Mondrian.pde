void setup() {

size(900,600);

}

void draw(){
  background(#FFFFFF);
  
  fill(#000000);
  //dik çizgiler
  rect(50,0,20,600);
  rect(170,0,20,600);
  rect(750,0,20,600);
  
  //dik kesikler-üstten başlayan
  rect(400,0,20,350);
  rect(650,0,20,500);
  
  //dik kesikler-alttan başlayan
  rect(500,150,20,600);
  
  //yatay çizgiler
  rect(0,150,900,20);
  rect(0,350,750,20);
  rect(50,500,850,20); 
  
  //renkli kareler
  
  //sarı
  noStroke();
  fill(#FFFF00);
  rect(70,0,100,150);
  rect(670,0,80,150);
  rect(670,370,80,130);
  rect(190,520,310,150);
  
  //kırmızı
  noStroke();
  fill(#FF0000);
  rect(190,0,210,150);
  rect(520,170,130,180);
  rect(70,520,100,80);
  
  //mavi
  noStroke();
  fill(#0000FF);
  rect(670,170,80,180);
  rect(420,0,230,150);
  rect(190,370,310,130);
  
  

}
  