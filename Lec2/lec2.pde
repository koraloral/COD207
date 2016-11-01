void setup() {

  size(600, 600);
}

void draw() {
  noStroke();
  smooth();
  for (int y=0; y<1000; y= y+35) {
    for (int i=0; i<15; i = i+1) {
      if (i%2==1) {
        fill(#000000);
        rect(5+(i*40), y+5, 30, 30);
      }
      if (i%2==0) {
        fill(#E90000);
        ellipse(20+(i*40), y+20, 30, 30);
      }
    }
    if (y%2==0) {
      for (int i=0; i<15; i = i+1) {
        if (i%2==1) {
          fill(#E90000);
          //fill(#000000);
          rect(5+(i*40), y+5, 30, 30);
        }
        if (i%2==0) {
          fill(#000000);
          //fill(#E90000);
          ellipse(20+(i*40), y+20, 30, 30);
        }
      }
    }
  }
}