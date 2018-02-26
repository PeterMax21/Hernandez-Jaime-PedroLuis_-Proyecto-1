PFont titulo;
int seleccionar;
int jugador1;
int jugador2;
int turno=0;
float angle=0.0;

class Particula
{
  float x,y,dx,dy;
  int t;
  color c;
  Particula(float x_, float y_, float dx_, float dy_, int t_, color c_)
  {
    x = x_;
    y= y_;
    dx = dx_;
    dy = dy_;
    t = t_;
    c = c_;
  }
  void movimiento()
  {
    x += dx;
    y += dy;
  }

  void display()
  {
    noStroke();
    fill(c);
    ellipse(x,y,t,t);
  }
  
  void rebota()
  {
    if (x > width)
    {
      x = width;
      dx= dx* -1;
    }
    if (x<0)
    {
      x = 0;
      dx= dx* -1;
    }
    if (y<0)
    {
      y = 0;
      dy*= -1;
    }
    if (y>height)
    {
      y = height;
      dy*= -1;
    }
  }  
}

Particula una;
ArrayList <Particula> Particulas;
class personaje
{
  String nombre;
  int ataque;
  int defensa;
  int vida;
  
  
  personaje(String nombre_, int ataque_, int defensa_, int vida_)
  {
   nombre= nombre_;
   ataque=ataque_;
   defensa=defensa_;
   vida=vida_;
   
  }
  
  
}

personaje Jack;
personaje Annie;
personaje Pennywise;
personaje Brady;
personaje Child;
personaje J1;
personaje J2;

int pantalla= 1;

void setup()
{
  size(600,600);
  
  Jack=new personaje("Jack",50,60,150);
  Annie=new personaje("Annie",66,73,160);
  Pennywise= new personaje("Pennywise",80,85,200);
  Brady= new personaje("Brady",55,60,140);
  Child=new personaje("Child",45,60,200);
  
  titulo=loadFont("KingthingsTrypewriter2-48.vlw");
  textFont(titulo);
  
  color c = color(random(#a1887f),random(#a1887f),random(#a1887f));
  una = new Particula(random(400),random(400),random(-2,2),random(-2,2), ceil(random(10,30)), c);
  
  Particulas = new ArrayList<Particula>();
  for (int i=0; i<100; i++)
  {
    c = color(random(#a1887f),random(#a1887f),random(#a1887f));
    Particulas.add(new Particula(random(400),random(400),random(-2,2),random(-2,2), ceil(random(10,30)), c));
  }
  
}


void draw()
{
  switch(pantalla)
  {
    case 1:
    titulo();
    break;
    
    case 2:
    historia();
    break;
    
    case 3:
    personajes();
    break;
    
    case 4:
    personajes2();
    break;
    
    case 5:
    batalla();
    break;
  }
  
}

void titulo()
{
  float sinval=sin(angle);
  println(sinval);
  float gray=map(sinval,-1,1,0,225);
  background(gray);
  angle +=0.03;
  textSize(110);
  text("Maine",150,300);
  textSize(20);
  text("Presiona A",250,520);
  if (key == 'A'|| key== 'a')
  {
    pantalla=2;
  }
}

void historia()
{
  background(#212121);
  textSize(20);
  text("En el estado de Maine habitan las personas y seres más perversos que el mundo haya conocido,con habilidades increíbles esperando el momento para atacar.",80,80,500,400);
  text("Durante un tiempo estos seres estuvieron alejados unos de otros, causando terror y asesinando en los lugares donde habitaban, creyendo que eran los únicos en el mundo.",80,250,500,400);
  text("Ahora estos seres se enfrentan a algo contra lo que desconocían completamente, que no son los únicos.",80,400,500,400);
  text("¡Que comience el juego!",180,540);
  textSize(15);
  text("Presiona B",250,560);
  if (key == 'B'|| key == 'b')
  {
    pantalla=3;
  }
}

void personajes()
{
  background(#212121);
  
  una.rebota();
  una.movimiento();
  una.display();
  for(Particula p:Particulas)
  {
    p.display();
    p.movimiento();
    p.rebota();
  }
  
  pushMatrix();
  scale(0.45);
  translate(30,30);
  Jack();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(400,200);
  Annie();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(700,30);
  Pennywise();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(30,600);
  Brady();
  popMatrix();
  pushMatrix();
  scale(0.30);
  translate(1300,1100);
  Child();
  popMatrix();
  fill(255);
  text("Presiona H",90,280);
  text("Presiona J",260,380);
  text("Presiona K",395,280);
  text("Presiona L",90,530);
  text("Presiona G",430,512);
  text("selecciona a tu personaje, jugador1",185,560);
    
  if(keyPressed)
  {
    if(key=='h'||key=='H')
    {
      J1=Jack;
      jugador1=0;
      pantalla=4;
    }
  }
  
  if(keyPressed)
  {
    if(key=='j'||key=='J')
    {
      J1=Annie;
      jugador1=1;
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='k'||key=='K')
    {
      J1=Pennywise;
      jugador1=2;
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='l'||key=='L')
    {
      J1=Brady;
      jugador1=3;
      pantalla=4;
    }
  }
   if(keyPressed)
  {
    if(key=='g'||key=='G')
    {
      J1=Child;
      jugador1=4;
      pantalla=4;
    }
  }
}

void personajes2()
{
  background(#212121);
  
  una.rebota();
  una.movimiento();
  una.display();
  for(Particula p:Particulas)
  {
    p.display();
    p.movimiento();
    p.rebota();
  }
  
  pushMatrix();
  scale(0.45);
  translate(30,30);
  Jack();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(400,200);
  Annie();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(700,30);
  Pennywise();
  popMatrix();
  pushMatrix();
  scale(0.45);
  translate(30,600);
  Brady();
  popMatrix();
  pushMatrix();
  scale(0.30);
  translate(1300,1100);
  Child();
  popMatrix();
  fill(255);
  text("Presiona M",90,280);
  text("Presiona N",260,380);
  text("Presiona O",395,280);
  text("Presiona P",90,530);
  text("Presiona Q",430,512);
  text("selecciona a tu personaje, jugador2",185,560);
  
    if(keyPressed)
  {
    if(key=='m'||key=='M')
    {
      J2=Jack;
      jugador2=0;
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='n'||key=='N')
    {
      J2=Annie;
      jugador2=1;
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='o'||key=='O')
    {
      J2=Pennywise;
      jugador2=2;
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='p'||key=='P')
    {
      J2=Brady;
      jugador2=3;
      pantalla=5;
    }
  }
   if(keyPressed)
  {
    if(key=='q'||key=='Q')
    {
      J2=Child;
      jugador2=4;
      pantalla=5;
    }
  }
}
void batalla()
{
  background(#212121);
   if(jugador1==0)
   {
    pushMatrix();
    translate(10,130);
    scale(0.7);
    Jack();
    popMatrix();
   }
   if(jugador1==1)
   {
    pushMatrix();
    translate(10,130);
    scale(0.7);
    Annie();
    popMatrix();
   }
   if(jugador1==2)
   {
    pushMatrix();
    translate(10,130);
    scale(0.7);
    Pennywise();
    popMatrix();
   }
   if(jugador1==3)
   {
    pushMatrix();
    translate(10,130);
    scale(0.7);
    Brady();
    popMatrix();
   }
   if(jugador1==4)
   {
    pushMatrix();
    translate(10,130);
    scale(0.5);
    Child();
    popMatrix();
   }
   if(jugador2==0)
   {
    pushMatrix();
    translate(230,130);
    scale(0.7);
    Jack();
    popMatrix();
   }
   if(jugador2==1)
   {
    pushMatrix();
    translate(230,130);
    scale(0.7);
    Annie();
    popMatrix();
   }
   if(jugador2==2)
   {
    pushMatrix();
    translate(230,130);
    scale(0.7);
    Pennywise();
    popMatrix();
   }
   if(jugador2==3)
   {
    pushMatrix();
    translate(230,130);
    scale(0.7);
    Brady();
    popMatrix();
   }
   if(jugador2==4)
   {
    pushMatrix();
    translate(350,130);
    scale(0.5);
    Child();
    popMatrix();
   }
   textSize(15);
   text("Jugador 1 ataca con T",60, 570);
   text("Jugador 2 ataca con S",300, 570);
    fill(#FF0DE3);
    rect(100,100,jugador1,20);
    fill(#FF0DE3);
    rect(800,100,jugador2,20);
        pushMatrix();
    fill(#FF0DE3);
    rect(100,100,jugador1,20);
    popMatrix();
    //VIDA2
    pushMatrix();
    fill(#FF0DE3);
    rect(800,100,jugador2,20);
    popMatrix();
    
      if (jugador1<=0)
    {
      fill(255);
      text("Gana jugador 2, presione ESPACIO", 300, 50);
      if (jugador1 <= 0)
      {
        jugador1=0;
      }
        } else if (jugador2<=0)
    {
      fill(255);
      text("Gana jugador 1, presione ESPACIO", 210, 50);
    if (jugador2 <= 0)
      {
        jugador2=0;
      }
    }
    if (key=='t'||key=='T')
    {
      jugador2=jugador2-(jugador1-jugador2);
      println(jugador2);
      turno=1;
    }
    
    
  if (turno==1&&pantalla==2)
  {
    if (key=='s'||key=='S')
    {
      jugador1=jugador1-(jugador2-jugador1);
      println(jugador2);
      turno=0;
    }
  }
}
   