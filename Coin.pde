class Coin{
  
  float x,y;
  float xsize,ysize;
  Coin(){
    xsize=10;
    ysize=10;
  }
  void update(){
    if(b.locationbil.x<xsize+x&&b.locationbil.x>x&&b.locationbil.y<ysize+y&&b.locationbil.y>y){
    xsize=0;
    ysize=0;
    if(keyPressed){
    if(key==' '){
    xsize=10;
    ysize=10;
    }
   }
  }  
 }
  
  
  void display(){
  ellipse(x,y,xsize,ysize);
  }
}
