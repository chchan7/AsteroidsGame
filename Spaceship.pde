class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners =  new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(252, 5, 30  );
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 5;
    myYspeed = 5;
    myPointDirection = 0;
  }
  
  public void setXspeed (double x) {
    myXspeed = x;
  }
  
  public void setYspeed (double y) {
    myYspeed = y;
  }
  
  public void setXcenter (double x) {
    myCenterX = x;
  }
  
  public void setYcenter (double y) {
    myCenterY = y;
  }
}
