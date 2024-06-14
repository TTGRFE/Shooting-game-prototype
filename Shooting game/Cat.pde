class Cat extends Sprite {
  int Vie = 2600;

  Cat() {
    super(stage, "cat");
    setRotationStyle("left-right");
    setSizeTo(100);
    switchCostumeTo(1);
  }

  void draw() {
    if (keyIsPressed('z')) {
      switchCostumeTo(2);
      pointInDirection(-90);
      move(10);
    }
    if (keyIsPressed('s')) {
      switchCostumeTo(1);
      pointInDirection(90);
      move(10);
    }
    if (keyIsPressed('d')) {
      switchCostumeTo(0);
      pointInDirection(0);
      move(10);
    }
    if (keyIsPressed('q')) {
      switchCostumeTo(0);
      pointInDirection(180);
      move(10);
    }
    display();
    fill(0, 255, 0);
    rect(x-50, y-85, Vie/26, 20);
  }

  void run() {
    for (;; ) {
      delay(128);
      if (mousePressed){
        ProjectileClone.add(new Projectile());
        stage.Wait(0.1);
      }
    }
  }
}
