class Forhindring
{
  float locationx, locationy, sizex, sizey;
  float x;
  
Forhindring()
{
  x=24;
}

void update()
{
  if (b.locationbil.x>locationx-x&&b.locationbil.x<sizex+locationx+x&&b.locationbil.y>locationy-x&&b.locationbil.y<sizey+locationy+x){
    b.locationbil.x=0;
    b.locationbil.y=0;
    delay(1000);
  }

}
void display()
{
  rectMode(CORNER);
  stroke(0);
  fill(200);
  rect(locationx,locationy,sizex,sizey);
  
}


}
