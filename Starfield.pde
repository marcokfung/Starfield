Particle[] parts = new Particle[1000];
void setup()
{
  size(600,600);
  noStroke();
  for (int i = 0; i < parts.length; i++) {
   parts[i] = new Particle();
  }
   parts[0] = new OddballParticle();
}

void draw()
{
    background(0);
  for (int i = 0; i < parts.length; i++) {
   parts[i].show();
   parts[i].move();
  }

}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
   myX = myY = 300;
   myAngle = Math.random()*2*Math.PI;
   mySpeed = Math.random()*10;
   myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() {
   myX = myX + Math.cos(myAngle) * mySpeed;
   myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show() {
   fill(myColor,150);
   ellipse((float)myX, (float)myY, 20, 20);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
   myX = 300;
   myY = 300;
  }
  void move(){
    myX = myX + (int) (Math.random()*7)-1;
    myX = myX - (int) (Math.random()*7)+1;
    myY = myY + (int) (Math.random()*7)-1;
    myY = myY - (int) (Math.random()*7)+1;
    
    if(myX>=600){
     myX = myX - 20;
    }    
   else if (myX<=0){
     myX = myX + 20;
   }
   if(myY>=600){
     myY = myY - 20;
    }
    else if (myY<=0){
     myY = myY + 20; 
    }
  }
  
  void show(){
    fill(255,51,51);
    rect((float)myX, (float)myY, 40, 40);
  }
}
