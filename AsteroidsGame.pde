  Spaceship bob;
  Star[] sue;
  ArrayList <Asteroid> nick = new ArrayList <Asteroid>();
  ArrayList <Bullet> shots = new ArrayList <Bullet>();
  public void setup() 
  {
    size(800,800);
    bob = new Spaceship();
    sue = new Star[600];
   
    for (int i = 0; i < sue.length; i++)
      sue[i] = new Star();
      
    for (int i = 0; i < 10; i++)
      nick.add(i, new Asteroid());
  }
  public void draw() 
  {
    background(0);
    bob.show();
    bob.move();
    for (int i = 0; i < sue.length; i++)
      sue[i].show();
      
    for (int i = 0; i < nick.size(); i++) {
      nick.get(i).show();
      nick.get(i).move();
    } 
    
    int removeAsteroids = 0;
    for (int i = 0; i < nick.size(); i++) {
      Asteroid asteroid = nick.get(i);
      double distance = dist((float)asteroid.getX(), (float)asteroid.getY(), (float)bob.getX(), (float)bob.getY());
      if (distance < 25) {
        nick.remove(i);
        removeAsteroids++;
        i--;
        continue;
      }
    for (int b = 0; b < shots.size(); b++) {
        Bullet gun = shots.get(b);
        
        if (dist((float) asteroid.getX(), (float) asteroid.getY(),
             (float) gun.getX(), (float) gun.getY()) < 25) {
               
          nick.remove(i);
          shots.remove(b);
          removeAsteroids++;
          i--;
          b--;
          break;
      }
    }
   } 
    for (int i = 0; i < removeAsteroids; i++) {
      nick.add(i, new Asteroid());
    }
    
    for (int i = 0; i < shots.size(); i++) {
      shots.get(i).move();
      shots.get(i).show();
    }
    
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
      bob.turn(-40);
      
    if (key == 'd')
      bob.turn(40);
      
    if (key == 'w')
      bob.accelerate(1);
      
    if (key == 's')
      bob.accelerate(-1);
       
     if (key == 'q')
       shots.add(new Bullet(bob));
  }
