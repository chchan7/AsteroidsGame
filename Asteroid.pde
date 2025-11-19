public class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11,-5};
    yCorners = new int[] {-8,-8,0,10,8,0};
    myColor = color(125,125,125);
    myCenterX = (int)(Math.random() * 601);
    myCenterY = (int)(Math.random() * 601);
    myXspeed = 1 + (int)(Math.random() * 5);
    myYspeed = 1 + (int)(Math.random() * 5);
    myPointDirection = 1;
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
    public void setXcenter (double x) {
    myCenterX = x;
  }
  
  public void setYcenter (double y) {
    myCenterY = y;
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
}
