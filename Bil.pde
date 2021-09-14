PVector location;
PVector velocity;
PVector acceleration;
float x,y;

class Bil{
Bil(){
  location = new PVector(0,0);
  velocity = new PVector(0,0);
  x=100;
  y=50;
}
void update(){
  PVector mouse = new PVector(mouseX,mouseY);
  PVector dir = PVector.sub(mouse,location);
  dir.mult(0.001);
  acceleration = dir;
  velocity.add(acceleration);
  location.add(velocity);
  velocity.limit(5);
 /* if(keyPressed)
  {
    if(key=='s')
    {
      }
    } 
    if(key=='a')
    {
    }*/

}

void display(){
  float angle = velocity.heading();
  stroke(0);
  fill(250);
  pushMatrix();
  rectMode(CENTER);
  translate(location.x,location.y);
  rotate(angle);
  rect(0,0,x,y);
  popMatrix();
}
  
}
