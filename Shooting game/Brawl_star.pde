

import R2mix.PScratch.*;
import processing.sound.*;
ArrayList<Projectile> ProjectileClone = new ArrayList<Projectile>();
ArrayList<Enemie> EnemieClone = new ArrayList<Enemie>();
int VieEnemie = 2500;
int score = 0;
Cat cat;
Stage stage;
Sounds sounds;
Enemie enemie;


void setup() {
  size(800, 600);
  stage = new Stage(this, "scenes");
  sounds = new Sounds(stage, "sounds");
  cat= new Cat();
  cat.start();
}
void draw () {
  stage.backdrops();
  cat.draw();
  stage.drawClones(ProjectileClone);
  stage.drawClones(EnemieClone);
  if (frameCount%(60 - score/10) == 0) {
    EnemieClone.add(new Enemie());
  }
}
void mousePressed() {
  stage.pick();
}
void keyPressed() {
  stage.keyIsDown();
}
void keyReleased() {
  stage.keyIsUp();
}
