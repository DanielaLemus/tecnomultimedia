//Lemus Bernal DAniela
//Legajo 91453/8
//Link https://youtu.be/0hRqsHv8Jok
//variables
String [] textos = {"Mariposa Fugitiva","Juego creado por","Daniela Lemus","Reglas","Encuentra y atrapa la mariposa \n\nen el menor tiempo posible \n\ndando click sobre ella","Preciona N para continuar"};
int estado;
PImage fondojuego;
PImage mariposa;
PImage nomariposa;
// define el estado de fin de partida cuando se falle vuelve a 0
int inicio= 1;
//ubicacion animales
int cambioU= 1;
//posicion y tamaño del objeto
int tamAnimal= 50;
int puntos= 0;
//posiciones 
int posx= 0;
int posy=0;
PFont letra;


//pantalla
void setup ()
{
  size (800,900);
  fondojuego=loadImage("fondojuego.jpg");
  mariposa=loadImage("mariposa.png");
  nomariposa=loadImage("nomariposa.png");
  cursor(HAND); 
  letra=loadFont("fuenteLetra.vlw");
}


void draw()
{
  textFont(letra);
  //creditos
  if (estado==0) {
    background(0);
    pantallas(textos[0], width/2, height/2, 100 );
    pantallas(textos[5], width/2, 850, 50 );
  } else if (estado==1) {
    background(0);
    pantallas(textos[1], width/2, 200, 100 );
    pantallas(textos[2], width/2, 300, 60);
    pantallas(textos[5], width/2, 850, 50 );
  } else if (estado==2) {
    background(0);
    pantallas(textos[3], width/2, 200, 100 );
    pantallas(textos[4], width/2, 300, 60 );
    pantallas(textos[5], width/2, 850, 50 );
    //ejecucion del juego
  } else if(inicio==1 && cambioU==1) {
    
      dibujaformas();
    
  }
}


//funciones
void dibujaformas()//esta funcion es todo el juego
{
  textFont(letra);
  tint(230);
image(fondojuego,0,0,width,height);

//ciclo for para la mariposa y un cucarron de forma alatorea usando random  
for(int i=0; i<=puntos; i++)
{
//posicion aleatorios  multiplicando los cucarrones
posx =floor(random(50,750));
posy=floor(random(50,850));
image(nomariposa,posx,posy,tamAnimal,tamAnimal);
}


//posicion mariposa cambio forma aleatorea
posx =floor(random(50,750));
posy=floor(random(100,850));
image(mariposa,posx,posy,tamAnimal,tamAnimal);

//puntos
fill(255);
textAlign(CENTER);
textSize(50);
text("SCORE:" +(puntos),300,45);

//time
fill(255);
textAlign(LEFT);
textSize(50);
//tiempo en milisegs y se divide en 100 para q combiarta los mili en seg
text("TIME:" +millis()/1000,20,45);

//cambia el valor de variable al perde
cambioU=0;
}

void keyPressed() {
  if(key == 'N' || key == 'n'){
  estado ++;
  }
  if(key == 'R' || key == 'r'){
  estado = 0;
  inicio=1;
  cambioU=1;
  puntos=0;
  }
}
//texto de creditos
void pantallas(String texto,  int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(21, 243, 233);
  text(texto, px, py);
} 

//RATON
void mousePressed()
{
  if(inicio==1){
  if (cambioU==0)
  {
  cambioU=1;
  }
  //cordenadas del mouse
  if((mouseX> posx-tamAnimal) && (mouseX< posx+tamAnimal) && (mouseY>posy-tamAnimal) && (mouseY< posy+tamAnimal))
  {
  puntos+=1;
  }
  else
  {
  inicio=0;
  
 //finish
 fill(221,221,221);
 noStroke();
 rect(100,400,580,140,30);
 fill(0);
 textAlign(CENTER);
 textSize(50);
 text("GAME OVER :" +puntos + "  en  " + millis()/1000 + ": segs ",width/2,460);
 text("reinicio juego con R",400,510);
  }
 } 
}
