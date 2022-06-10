 //Lemus Daniela
 //Legajo 91453/8
 //link video https://youtu.be/6qN54vbod_c
 
 //variables de reset
 //posicion y radio del boton 
int bx = 550;
int by = 550;
int radio= 50;

 void setup(){
  size(600,600);
  //posion del mouse al iniciar el programa al no estar dentro de la ventana
  mouseX=302;
  mouseY=302;
  
  //los cuadros esten centrados 
  rectMode(CENTER);
  
}
void draw(){
  //bucle ciclo for para limitar el numero de cuadrados dependiendo la distancia del mas y la variable i es la cantidad de cuadrados 
  for(int i=31; i >0; i--){
   //dist tamaño cuadrado si la distancia es menor al ancho de la pantalla dividido 8 el color del cuadrado va variar de forma ramdom
    float d=dist(width/2, height/2,mouseX,mouseY);
      if(d <width/8 ){
      float r=random(255);
      fill(r);
      //al precionar cambia el color 
        if(mousePressed){
          fill(0,r,r);
        }
        //si no se cumple el if va tener un color ramdom entre rojo y azul
    }else{
      fill(random(180),0,random(255));
      }   
      //le quito los bordes a los cuadrados y se dibuja 
   noStroke();
   rect(width/2, height/2,i*d,i*d);
  }
  //creo el boton de reinicio colocado en una esquina haciendo q cambie su color 
  //dependindo si esta sobre el o fuera de el, al momento de presionarlo es colocar el programa como al inico
  float h = dist(mouseX,mouseY,bx,by);
            if(h >radio){
              fill(61,255,58);
            }else{
              fill(246,255,63);
              if(mousePressed){
                //boton se activa unicamente con el boton izquierdo 
                if(mouseButton == LEFT){
                  mouseX=302;
                  mouseY=302;
                }
              }
            }
   ellipse(bx,by,radio,radio);
   fill(0);
   textSize(10);
   text("Reinicio",533,553);
  
}
