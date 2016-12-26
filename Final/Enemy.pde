class Enemy {
  PImage resim;
  float r = 40;
  float t = -400;
  float speed1 = random(5, 20);
  String []vehicle={"truck.png", "truck2.png", "truck3.png", "truck4.png", "truck5.png"};

  Enemy() {
    int index=int(random(0, vehicle.length));
    resim=loadImage(vehicle[index]);
  } 

  void fall() {
    t = t + speed1;
    fill(0);
    image(resim, r, t, 70, 200 );

    if (t>height) {    
      t = -400;
      speed1 = random(4, 14);
      score=score+1;
      int index=int(random(0, vehicle.length));
      resim=loadImage(vehicle[index]);
    }
  }
  float getr() {
    return r;
  }
  float gett() {
    return t;
  }
  void setr(float _r) {
    r=_r;
  }
  void sett(float _t) {
    t=_t;
  }
}