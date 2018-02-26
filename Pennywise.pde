void Pennywise()
{
    strokeWeight(3);
  fill(#a2a3a5);
  rect(200,150,130,200);
  fill(#720606);
  ellipse(265,210,20,20);
  ellipse(265,250,20,20);
  ellipse(265,290,20,20);
  fill(#a2a3a5);
  quad(205,350,265,350,240,500,200,500);
  quad(265,350,325,350,330,500,290,500);
  fill(#a2a3a5);
  quad(200,150,150,310,180,310,200,220);
  quad(330,150,380,310,350,310,330,220);
  fill(#d2dce1);
  ellipse(265,100,100,100);
  fill(#a2a3a5);
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
 arc(290,100,20,20,HALF_PI-PI+QUARTER_PI,PI-QUARTER_PI);
 arc(240,100,20,20,QUARTER_PI,PI+QUARTER_PI);
 
  scale(0.3);
  translate(900,455);
  strokeWeight(5);
  noFill();
  noStroke();
  stroke(0, 0, 0);
  beginShape();
  vertex(-70.013, -57.667);
  bezierVertex(-73.667, -32.334, -115.411, -15.443, -118.297, -48.334);
  bezierVertex(-121.183, -81.225, -87.067, -145.146, -89.734, -242.923);
  endShape();
  translate(45,9);
  beginShape();
  vertex(-3.177, -57.667);
  bezierVertex(0.81, -32.334, 46.36, -15.443, 49.51, -48.334);
  bezierVertex(52.66, -81.225, 15.432, -145.146, 18.342, -242.923);
  endShape();

}