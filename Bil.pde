

class Bil{
PVector locationbil;
PVector velocity;
PVector acceleration;
float x,y;
Bil(){
  locationbil = new PVector(0,0);
  velocity = new PVector(0,0);
  x=50;
  y=50;
}
void update(){
  PVector mouse = new PVector(mouseX,mouseY);
  PVector dir = PVector.sub(mouse,locationbil);
  dir.mult(0.001);
  acceleration = dir;
  velocity.add(acceleration);
  locationbil.add(velocity);
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
  translate(locationbil.x,locationbil.y);
  rotate(angle);
  rect(0,0,x,y);
  popMatrix();
}
  
}
