void Annie()
{
   size(600,600);
  strokeWeight(3);
  fill(#463b29);
  rect(200,150,130,200);
  fill(#726542);
  quad(200,350,330,350,350,500,180,500);
  fill(#726542);
  quad(200,150,150,310,180,310,200,220);
  quad(330,150,380,310,350,310,330,220);
  fill(0);
  arc(265,112,113,143,PI,PI+HALF_PI+HALF_PI);
  fill(#fbd4c3);
  ellipse(265,100,100,100);
  fill(0);
  beginShape();
    vertex(200, 500);
    vertex(240, 500);
    vertex(240, 580);
    vertex(175, 580);
    vertex(175, 550);
    vertex(200, 550);
  endShape(CLOSE);
  beginShape();
    vertex(330, 500);
    vertex(290, 500);
    vertex(290, 580);
    vertex(355, 580);
    vertex(355, 550);
    vertex(330, 550);
 endShape(CLOSE);
 fill(0);
 arc(290,100,20,20,HALF_PI-PI+QUARTER_PI,PI-QUARTER_PI);
 arc(240,100,20,20,QUARTER_PI,PI+QUARTER_PI);
 rect(145,310,80,8);
 arc(200,315,50,20,HALF_PI-PI+QUARTER_PI+QUARTER_PI,PI-QUARTER_PI+QUARTER_PI);

}