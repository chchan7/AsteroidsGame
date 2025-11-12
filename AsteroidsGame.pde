Spaceship bob;
Star[] sue;
public void setup() 
{
  size(600,600);
  bob = new Spaceship();
  sue = new Star[400];
  for (int i = 0; i < sue.length; i++)
    sue[i] = new Star();
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sue.length; i++)
    sue[i].show();
}

public void keyPressed() {
  if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setXcenter((int)(Math.random() * 601));
    bob.setYcenter((int)(Math.random() * 601));
    bob.turn((int)(Math.random() * 41) - 20);
  }
  
  if (key == 'a') 
    bob.turn(-20);
    
  if (key == 'd')
    bob.turn(20);
    
   if (key == 'w')
     bob.accelerate(5);
}
