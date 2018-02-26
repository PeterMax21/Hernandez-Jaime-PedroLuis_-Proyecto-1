void Brady()
{
   strokeWeight(3);
  fill(#131b2e);
  rect(200,150,130,200);
  fill(#697581);
  quad(200,350,265,350,250,500,190,500);
  quad(265,350,330,350,340,500,280,500);
  fill(#131b2e);
  quad(200,150,150,310,180,310,200,220);
  quad(330,150,380,310,350,310,330,220);
  fill(#e1c0bb);
  ellipse(265,100,100,100);
  fill(0);
  beginShape();
    vertex(200, 500);
    vertex(240, 500);
    vertex(240, 550);
    vertex(175, 550);
    vertex(175, 520);
    vertex(200, 520);
  endShape(CLOSE);
  beginShape();
    vertex(330, 500);
    vertex(290, 500);
    vertex(290, 550);
    vertex(355, 550);
    vertex(355, 520);
    vertex(330, 520);
 endShape(CLOSE);
 fill(0);
 arc(290,100,20,20,HALF_PI-PI+QUARTER_PI,PI-QUARTER_PI);
 arc(240,100,20,20,QUARTER_PI,PI+QUARTER_PI);
 fill(#d1ee2e);
 ellipse(265,220,70,70);
 fill(0);
 ellipse(280,215,10,10);
 ellipse(250,215,10,10);

}