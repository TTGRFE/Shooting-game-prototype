class Projectile extends Sprite {
  int NbrProjectile;
  Projectile() {
    super(stage, "projectile");
    goTo(cat);
    start();
    setSizeTo(30);
    pointTowards("mouse");
  }
  void draw() {
    move(7);
    display();
  }

  void run() {
    for (;; ) {
      delay(40);
      if (touch(EnemieClone, this)) {
        delay(16);
        deleteThisClone();
        break;
      }
    }
  }
}
