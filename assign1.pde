/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int x=640;
int y=0;
int z=0;
int hpx=floor(random (645));
  int hpy=floor(random (481));
  int treasurex=floor(random (645));
  int treasurey=floor(random (481));
 void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1=loadImage("/img/bg1.png");
  bg2=loadImage("/img/bg2.png");
  enemy=loadImage("/img/enemy.png");
  hp=loadImage("/img/hp.png");
  treasure=loadImage("/img/treasure.png");
  fighter=loadImage("/img/fighter.png");
     
  }

void draw() {
  // your code
 
    x %= 641;
   image(bg2,x,0);
   y=x-640; 
   y %= 640   ;
   image(bg1,y,0); 
      x=x+1;   
      z %= 641;
   image(enemy,z,5);
   z=z+10;
   image(hp,hpx,hpy);
  image(treasure,treasurex,treasurey);
  treasurex=treasurex+6;
    image(fighter,550,240);
  }
