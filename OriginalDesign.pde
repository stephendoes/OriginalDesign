void setup()
{
frameRate(40);
size(600,600);
}
//body variables
int head = 0;
int headColor =255; 
int headSpeed = 1000;
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
int birdEye = 0;


//background variables
int skyX = 0;
int skyY = 0;
int skyColor = 255;
int cloud1x = 0;
int cloud1y = 80;
int cloud2x = 0;
int cloud2y = 80;
int cloud3x = 0;
int cloud3y = 80;
int birdx = 900;
int bird2x =1550;
int birdHead =0;
int birdWing = 0;
int bird2Wing = 0;
int birdSpeed = 2;
int bird2Speed =2;
int birdWSpeed = 4;
int paraHeight = 180;
int paraLine = 2;
int paraSize = 200;
int speed = 4;
int time = 0;
int ball = 0;
int ballSpeed = 2;

void draw()

{
  
  
 background(0);
  
  //movement
 time++;
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
 birdx-=birdSpeed;
 bird2x+=bird2Speed;
 birdWing-=birdWSpeed;
 
 speed++;

  
   //sky
    
   
   background((int)(Math.random()*skyColor),(int)(Math.random()*skyColor),(int)(Math.random()*skyColor));
   fill(10,250,250);
   rect(skyX+-200,skyY+0,1000,2000);
  
  
  //clouds
   stroke(255,255,255);
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
  strokeWeight(paraLine);
  stroke(0,0,35);
  line (parachuteX+285,parachuteY+30,parachuteX+245,parachuteY-100);
  line (parachuteX+315,parachuteY+30,parachuteX+355,parachuteY-100);
  fill(150,205,255);
  ellipse(parachuteX+300,parachuteY-150,paraSize,paraHeight);
  
 
  noStroke();
  fill(0,0,200);
  //rightLeg
  rect(legX+305,legY+80,20,80,10);
  //left leg
  rect(legX+275, legY+80,20,80,10);
  
  //head 
  fill(255,headColor,headColor);
  ellipse(bodyX+300,bodyY+5,head+35,head+40);
  fill(0);
  //body
  fill(255,255,100);
  rect(bodyX+275,bodyY+20,50,80,10);
  
  //arms 
  //left arm
  strokeWeight(15);
  stroke(0,0,200);
  line (armX+280, armY+30, armX+230, armMove);
  //right arm 
  line (armX+320, armY+30, armX+370, armMove);
  


  //birds

  //redbird
  strokeWeight(1);
  stroke(0);
  fill(0);
  //beak
  triangle(birdx+30,100,birdx+40,105,birdx+40,95);
  //back wing
  fill(255,0,0);
  triangle(birdx+35,103,birdx+75,103,birdx+75,birdWing+93);
  //body
  fill(255,0,0);
  ellipse(birdx+65,105,40,20);
  //head
  ellipse(birdx+45,100,birdHead+18,birdHead+18);
  //eyes
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse(birdx+48,100,birdEye+8,birdEye+8);
  //front wing
  fill(255,0,0);
  triangle(birdx+55,103,birdx+75,103,birdx+85,birdWing+113);
  
 
 
  
   //movement reset
   
     
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
  if (cloud3y>800)
   {
     cloud3x = 2000;
     cloud2x = 2000;
     cloud1x = 2000;
     cloud3y = 2000;
     cloud2y = 2000;
     cloud1y = 2000;
     cloud3x++;
     skyColor = 0;
   }
  if (birdWing<-5)
  {
    birdWing=0;
    
  }
  if (birdx<360)
  {
    textSize(100);
     text("POP",210,100);
  }
  if (birdx <350)
  {
    
    birdSpeed = 0;
    paraHeight = 0;
    paraSize = 0;  
    paraLine =0;
    birdWSpeed = 0;
    birdEye +=5000;
    birdHead +=3;
 

  }
  
  if (birdHead > 10)
  {
    birdx = 1000000;
    birdSpeed -=3;
    bodyY+=5;
    legY+=5;
    armY+=5;
    armMove-=5;
    parachuteY+=5;
  }
  if (parachuteY>850)
      {
       parachuteY = -100;
       bodyY = -100;
       legY =-100;
       armY =-100;
       armMove =armY+90;
       skyY = 2000;
       
     }
  
  if (time > 900)
  {
    headColor = (int)(Math.random()*255);
    head+=headSpeed;

  }
  if (time>900)
  	
    text("BOOM", 150, 100);
 if (head>5000)
 {
 
   bodyX = -2000;
   bodyX -= 2;
   armX = -2000;
   armY = -2000;
   legX= -2000;
   legY = -2000;
   headSpeed =0;
   head = 20;
   
 }
 if (time > 950)
 {
 	textSize(100);
   text("The End",100,300);
 }
}
