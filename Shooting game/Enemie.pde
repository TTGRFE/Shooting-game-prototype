
class Enemie extends Sprite {
  int vie = 6;
  int randomTarget;
  

  Enemie() {
    super(stage, "enemie");
    setRotationStyle("left-right");
    setSizeTo(25);
    int randomPosition = (int)random(4);
    if (randomPosition == 0)goTo(750, 40);
    if (randomPosition == 1)goTo(750, 550);
    if (randomPosition == 2)goTo(40, 550);
    if (randomPosition == 3)goTo(40, 40);
    randomTarget = int(random(0, 2));
    start();
  }
  void draw() {
    pointTowards(cat);
    if (!touch(cat))move(1);
    display();
  }

  void run() {
    for (;; ) {
      delay(16);
      if (touch(ProjectileClone, this)) {
        vie -= 3;
        delay(16);
      }
      if (vie <= 0) {
        deleteThisClone();
        break;
      }
    }
  }
}
