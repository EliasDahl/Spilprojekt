class Forhindring
{
  float locationx, locationy, sizex, sizey;
  float x;
  boolean hit;
  int time;
  int timeDelay;
Forhindring()
{
  x=15;
}


void update()
{
    if (b.locationbil.x>locationx-x&&b.locationbil.x<sizex+locationx+x&&b.locationbil.y>locationy-x&&b.locationbil.y<sizey+locationy+x||b.locationbil.x>width||b.locationbil.y>height||b.locationbil.x<0||b.locationbil.y<0){
      hit=true;}
    else{hit=false;}
    
    if(hit==true)
    {
    b.velocity.x=0;
    b.velocity.y=0;
    b.acceleration.x=0;
    b.acceleration.y=0;
    b.x=0;
    b.y=0;
     if(keyPressed)
     {
       if(key==' ')
       {
    b.locationbil.x=25;
    b.locationbil.y=25;
    b.heading=90;
    b.x=25;
    b.y=50;
       }
      }
    }
}
void display()
{
  rectMode(CORNER);
  stroke(255);
  strokeWeight(5);
  fill(0);
  rect(locationx,locationy,sizex,sizey);
  
}
}
