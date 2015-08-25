void setup()
{
frameRate(60);
size(600,600);
}
int bodyX = 0;
int bodyY = 0;
int legX= 0;
int legY = 0;
int armX = 0;
int armY = 0;
int armMove = 0;
int parachuteX = 0;
int parachuteY = 0;


void draw()
{
  
 background(10,250,250);
  
  //movement
 
 bodyY++;
 legY++;
 armY++;
 armMove-=0.1;
 parachuteY++;
 //movement reset
   if (parachuteY>650)
   	 {
   	 	parachuteY = -110;
   	 }
   if (bodyY>650)
     {
       bodyY = -110;
     }
   if (legY>650)
     {
       legY =-110;
     }
   if (armY>650)
     {
       armY =-110;
       armMove =armY+90;
     }
   if (armMove<armY-10)
     {
       armMove = armY+50;
       armMove-=0.2;
     }
   
  //parachute
  strokeWeight(2);
  line (parachuteX+285,parachuteY+30,parachuteX+245,parachuteY-100);  
 
  noStroke();
  //rightLeg
  rect(legX+305,legY+80,20,80,10);
  //left leg
  rect(legX+275, legY+80,20,80,10);
  
  //head 
  ellipse(bodyX+300,bodyY+5,35,40);
  //body
  rect(bodyX+275,bodyY+20,50,80,10);
  //arms 
  //left arm
  strokeWeight(15);
  stroke(255,255,255);
  line (armX+280, armY+30, armX+230, armMove);
  //right arm 
  line (armX+320, armY+30, armX+370, armMove);


}
