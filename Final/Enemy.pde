class Enemy {
  float r = random(0, 430);
  float t = -50;
  float speed = random(1, 10);
  float score=0;

  void fall() {
    t = t + speed;
    fill(0);
    rect(r, t, 50, 50);

    if (t>height) {
      r = random(0, 430);
      t = -50;
      speed = random(1, 10);
      score=score+1;
      println(score);
      
    }
  }
  float getr() {
    return r;
  }
  float gett() {
    return t;
  }
}