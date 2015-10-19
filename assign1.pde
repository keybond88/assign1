* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int bg1x=640;
int bg2x=0;
int x=0;
int y=0;
int z=0;
int hpx=0;
  int hpy=0;
  int treasurex=0;
  int enemyy=floor(random(481));
  int treasurey=floor(random (481));
  int bloodx=floor(random(201));
 void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  fighter=loadImage("img/fighter.png");
     
  }

void draw() {
  // your code
 
    bg1x %= 1280;
   x=-640+bg1x;
   image(bg1,x,0);
    bg2x %=1280;
    y=-640+bg2x;   
   image(bg2,y,0); 
  bg1x=bg1x+5;
  bg2x=bg2x+5;
    z %= 640;
   image(enemy,z,enemyy);
   z=z+10;
   image(hp,hpx,hpy);
  image(treasure,treasurex,treasurey);
  treasurex=treasurex+6;
    image(fighter,550,240);
    fill(255,0,0);
    rect(5,5,bloodx,20);
  }
