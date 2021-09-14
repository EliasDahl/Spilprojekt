Bil b;
Forhindring one;
Forhindring two;
class Level{
Level(){ 
  b = new Bil();
  one = new Forhindring();
  one.locationx=0;
  one.locationy=200;
  one.sizex=500;
  one.sizey=500;
  
  two = new Forhindring();
  two.locationx=600;
  two.locationy=200;
  two.sizex=400;
  two.sizey=300;
}

void update(){
  b.update();
  one.update();
  two.update();
}

void display(){
  b.display();
  one.display();
  two.display();
}
}
