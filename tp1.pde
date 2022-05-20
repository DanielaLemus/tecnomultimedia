PImage fondo;
PImage arcane;
PImage img1;
PImage img2;
PImage img3;
PImage img;
PImage raton;
PFont letra;
float titulo;

float z1,z2,z3,z4;

void setup(){
noCursor();
size(700,500);
fondo=loadImage("fondo.jpg");

arcane=loadImage("Arcane.png");
titulo=300;

img1=loadImage("img1.jpg");

img2=loadImage("img2.jpg");

img3=loadImage("img3.jpg");

img=loadImage("img.jpg");

raton=loadImage("raton.png");

z1=-100;
z2=530;
z3=0;
z4=550;
textAlign(CENTER);
letra=loadFont("diseño.vlw");
}

void draw(){
cursor(raton,0,0);
textSize(18);
textFont(letra);

titulo-=1;
tint(90);
image(fondo,0,0,width, height);
noTint();
image(arcane,300,titulo,400,200);

if(titulo<-100){
  background(250);
  image(img1,-50,0,width,height);
  fill(0);
  z1+=2;
  textSize(30);
  text("Mia Sinclair Jenness \n\n As \n\nJinx \n\n\n\n Hailee Steinfeld \n\nAs \n\nVi",520,z1);
  
    if(z1>530){
    image(img2,0,0,width,height);
    fill(0);
    z2-=2;
    textSize(30);
    text("Un Blanc \n\n As \n\nVander \n\n\n\n Jason Spisak \n\nAs \n\nSilco",350,z2);
    
      if(z2<-200){
      image(img3,0,0,width,height);
      fill(0);
      z3+=2;
      textSize(30);
      text("\nKatie Leung \n\n As \n\nCaitlyn \n\n\n\n\n Kevin Alejandro \n\nAs \n\nJayce",z3,100);
      
        if(z3 > 380){
          tint(90);
        image(img,0,0,width,height);
        fill(250);
        z4-=3;
        noTint();
        textSize(30);
        text("MAIN TITLE \n\n THEME-ENEMYEnemy\n\n(from Arcane: Soundtrack)\n\n Imagine Dragons ft.JID,Arcane \n\n\n\nAnimation Director Barthelemy \n\nMaunoury\n\n\n\n Creado por \n\nChristian Linke, Alex Yee",350,z4);
        }
      }
    }
  }
}
