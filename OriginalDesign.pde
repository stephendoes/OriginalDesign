void setup()
{
frameRate(40);
size(600,600);
}
//body variables
int bodyX = 0;
int bodyY = 0;
int legX= 0;
int legY = 0;
int armX = 0;
int armY = 0;
int armMove = 0;
int parachuteX = 0;
int parachuteY = 0;
int paraTop = 0;
//background variables
int skyX = 0;
int skyY = 0;
int cloud1x = 0;
int cloud1y = 80;
int cloud2x = 0;
int cloud2y = 80;
int cloud3x = 0;
int cloud3y = 80;

void draw()

{
  
  
 background(10,250,250);
  
  //movement
 
 bodyY++;
 legY++;
 armY++;
 armMove--;
 parachuteY++;
 skyY--;
 cloud1x+=3;
 cloud1y+=3;
 cloud2x+=2;
 cloud2y+=2;
 cloud3x++;
 cloud3y++;
 
 //movement reset
   if (parachuteY>750)
      {
       parachuteY = -110;
       bodyY = -110;
       legY =-110;
       armY =-110;
       armMove =armY+90;
     }
   if (armMove<armY-10)
     {
       armMove = armY+50;
       armMove++;
     }
   if (cloud1y>900)
   {
     cloud1x = -300;
     cloud1y = -220;
   }
   
   if (cloud2y>900)
   {
     cloud2x = -300;
     cloud2y = -220;
   }
  if (cloud3y>900)
   {
     cloud3x = -300;
     cloud3x= -220;
   }


  
   //sky
    
   fill(10,250,250);
   rect(skyX+0,skyY+0,1000,3000);
  
  //clouds
  
  strokeWeight(0);
  
   fill(215, 245, 240);
  //firstcloud
  
  ellipse(cloud1x+182,512,82,60);
  ellipse(cloud1x+146,546,82,60);
  ellipse(cloud1x+148,510,82,60);
  ellipse(cloud1x+188,546,82,60);
  ellipse(cloud1y+182,512,82,60);
  ellipse(cloud1y+146,546,82,60);
  ellipse(cloud1y+148,510,82,60);
  ellipse(cloud1y+188,546,82,60);
  //secondcloud
  
  ellipse(cloud2x-42,112,82,60);
  ellipse(cloud2x-6,146,82,60);
  ellipse(cloud2x-8,110,82,60);
  ellipse(cloud2x-48,146,62,60);
  ellipse(cloud2y-42,112,82,60);
  ellipse(cloud2y-6,146,82,60);
  ellipse(cloud2y-8,110,82,60);
  ellipse(cloud2y-48,146,82,60);
  fill(215, 245, 240);
  //third cloud
 ellipse(cloud3x+82,312,82,60);
  ellipse(cloud3x+46,346,82,60);
  ellipse(cloud3x+48,310,82,60);
  ellipse(cloud3x+88,346,82,60);
  ellipse(cloud3y+82,312,82,60);
  ellipse(cloud3y+46,346,82,60);
  ellipse(cloud3y+48,310,82,60);
  ellipse(cloud3y+88,346,82,60);
  //parachute
   strokeWeight(2);
  line (parachuteX+285,parachuteY+30,parachuteX+245,parachuteY-100);
  line (parachuteX+315,parachuteY+30,parachuteX+355,parachuteY-100);
  fill(0);
  ellipse(parachuteX+300,parachuteY-100,250,100);
  
 
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
