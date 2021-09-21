

class Bil{
PVector locationbil;
PVector velocity;
PVector acceleration;
float x,y;
float heading=90;
float damping = 0.995;
float r = 16;
boolean thrusting = false;
PImage placeholder;
Bil(){
  locationbil = new PVector(25,25);
  velocity = new PVector();
  acceleration = new PVector();
  x=25;
  y=50;
  placeholder = loadImage("Finn.png");
}
void update(){
  locationbil.add(velocity);
  velocity.add(acceleration);
  velocity.mult(damping);
  velocity.limit(3);
  acceleration.mult(0);

}
void applyForce(PVector force){
  PVector f = force.get();
  acceleration.add(f);
}
void turn(float a){
  heading +=a;
}
void thrust(){
  float angle = heading-PI/2;
  PVector force = new PVector(cos(angle),sin(angle));
  force.mult(0.1);
  applyForce(force);
  thrusting = true;
}

void display(){
   if(one.hit==true||two.hit==true){strokeWeight(0);}
   else{strokeWeight(5);}
  stroke(0);
  pushMatrix();
  translate(locationbil.x,locationbil.y);
  rotate(heading);
  fill(255);
  rectMode(CENTER);
  rect(0,0,x,y);
  popMatrix();
  
  thrusting = false;
}
}
