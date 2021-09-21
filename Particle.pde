class Particle
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
 
  Particle(PVector l) {
  }
  void run() {
    update();
    display();
  }
 
  void update() {
    if(one.hit==false&&two.hit==false){
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-5,5),random(-5,5));
    location = new PVector(b.locationbil.x,b.locationbil.y+20);
    lifespan = 200.0;}
    if(one.hit==true||two.hit==true){
    location.add(velocity);
    velocity.add(acceleration);
    lifespan -= 2.0;}
  }
 
  void display() {
    stroke(0,lifespan);
    fill(random(100,255),random(200),random(0),lifespan);
    ellipse(location.x,location.y,12,12);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
