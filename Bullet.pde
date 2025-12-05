class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getMPD();
    myColor = color(54,135,49);
    accelerate(6.0);
  }
  
  public void show() {
    fill(myColor);
    ellipse((float) myCenterX,(float) myCenterY, 10,10);
  }
}
