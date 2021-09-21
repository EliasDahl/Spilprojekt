Forhindring one;
Forhindring two;
Coin a;
class Level{
Level(){ 
  one = new Forhindring();
  one.locationx=150;
  one.locationy=200;
  one.sizex=500;
  one.sizey=400;
  
  two = new Forhindring();
  two.locationx=750;
  two.locationy=200;
  two.sizex=300;
  two.sizey=300;
  
  a = new Coin();
  a.x=500;
  a.y=50;
}

void update(){
 one.update();
 two.update();
 a.update();
}

void display(){
 one.display();
 two.display();
 a.display();
   }
}
