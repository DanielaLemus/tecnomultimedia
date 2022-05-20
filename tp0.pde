void setup (){
 size (600, 600);
 background (255,255,255);

};
void draw (){
  
 noStroke();
 

  /*patas*/
  fill(255,157,80);
rect(350,485,20,40);
rect(370,500,10,20);

rect(250,485,20,40);
rect(240,500,10,20);



/*alas*/
fill(199,117,240);
ellipse(150,311,300,120);
ellipse(170,340,280,100);


ellipse(450,311,300,120);
ellipse(450,340,200,100);
  
  /*cuerpo*/
  fill(199,117,240);
ellipse (300,300,400,400);

/*ojos del buho*/
fill(238,225,35);
ellipse(200,250,150,150);

ellipse(400,250,150,150);


fill(0,0,0);
ellipse(200,250,80,80);

ellipse(400,250,80,80);

fill(255,255,255);
ellipse(219,240,40,40);

ellipse(419,240,40,40);

/*pico*/
fill(238,142,35);
triangle(250,324,350,324,300,350);

/*panza*/
fill(242);
stroke(238,69,171);
strokeWeight(2);
ellipse(300,420,300,120);


/*Plumas*/

fill(197,80,255);
stroke(238,142,35);
triangle(200,450,250,450,225,400);
triangle(280,450,330,450,305,400);
triangle(360,450,410,450,385,400);

/*Gorrito*/
noStroke();
fill(0,0,0);
ellipse(300,100,200,60);
rect(225,26,150,75);

};
