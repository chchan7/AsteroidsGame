class Star 
{
  private int myX,myY,myColor;
  public Star() {
    myX = (int)(Math.random() * 801);
    myY = (int)(Math.random() * 801);
    myColor = color(250);
  }
  
  public void show() {
  fill(myColor);
  noStroke();
  ellipse(myX,myY,5,5);
  }
  
}
