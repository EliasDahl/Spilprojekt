
Level l;
void setup()
{
  size(1000,700);
  l = new Level();
}

void draw()
{
  background(255);
  l.update();
  l.display();
}
