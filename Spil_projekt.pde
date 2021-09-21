
Level l;
Bil b;
Particle[]p = new Particle[40];
void setup()
{
  size(1000,700);
  l = new Level();
  b = new Bil();
  for (int i=0;i<p.length;i++){
  p[i]=new Particle(new PVector(width/2,10));}
}

void draw()
{
  background(100);
  b.update();
  b.display();
  b.thrust();
   for (int i=0;i<p.length;i++){
     if(one.hit==true||two.hit==true){
     p[i].display();}
      p[i].update();
   }
     l.update();
  l.display();
  if(keyPressed){
    if(key=='s')
    {
      b.turn(0.04);
    }
    if(key=='a')
    {
      b.turn(-0.04);
    }
}
}
