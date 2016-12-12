class Enemy {
  float r1 = 40;
  float r2 = 150;
  float r3 = 260;
  float r4 = 370;

  float t1 = -400;
  float t2 = -400;
  float t3 = -400;
  float t4 = -400; 

  float speed1 = random(4, 10);
  float speed2 = random(8, 12);
  float speed3 = random(4, 10);
  float speed4 = random(8, 12);

  int score=0;


  void fall() {

    t1 = t1 + speed1;
    t2 = t2 + speed2;
    t3 = t3 + speed3;
    t4 = t4 + speed4;

    fill(0);
    image(picture3,r1,t1,70,200 );
    fill(0);
    rect(r2, t2, 70, 200);
    fill(0);
    rect(r3, t3, 70, 200);
    fill(0);
    rect(r4, t4, 70, 200);

    if (t1>height) {
      r1 = 40;
      t1 = -200;
      speed1 = random(4, 12);
      score=score+1;
      println(score);
    }
    if (t2>height) {
      r2 = 150;
      t2 = -200;
      speed2 = random(4, 12);
      score=score+1;
      println(score);
    }
    if (t3>height) {
      r3 = 260;
      t3 = -200;
      speed3 = random(4, 12);
      score=score+1;
      println(score);
    }
    if (t4>height) {
      r4 = 370;
      t4 = -200;
      speed4 = random(4, 12);
      score=score+1;
      println(score);
    }
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER);
    text("Score: " + score, width -240, 80);
  }
  float getr1() {
    return r1;
  }
  float getr2() {
    return r2;
  }
  float getr3() {
    return r3;
  }
  float getr4() {
    return r4;
  }
  float gett1() {
    return t1;
  }
  float gett2() {
    return t2;
  }
  float gett3() {
    return t3;
  }
  float gett4() {
    return t4;
  }
}