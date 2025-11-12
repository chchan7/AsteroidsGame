class Star 
{
  private int myX,myY,myColor;
  public Star() {
    myX = (int)(Math.random() * 601);
    myY = (int)(Math.random() * 601);
    myColor = color((int)(Math.random() * 250), (int)(Math.random() * 250), (int)(Math.random() * 250));
  }
  
  public void show() {
  fill(myColor);
  noStroke();
  ellipse(myX,myY,5,5);
  }
  
}
