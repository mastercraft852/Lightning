int startX = 0;
int startY=0;
int endX=width;
int endY=height;

void setup()
{
  size(700,700);
  background(0);
  strokeWeight((int)(Math.random()*20)+3);
  frameRate(10);
}

void draw()
{
      lightningStrike();
}

void lightningStrike(){
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(endY<height+1){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*10);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
}

 startX = 0;
  startY=0;
  endX=width;
  endY=height;
} 

void mousePressed(){ 
  // startX = 0;
  // startY=0;
  // endX=width;
  // endY=height;
  noStroke();
  fill(0,0,0);
  rect(0,0,1000,1000);
  strokeWeight((int)(Math.random()*20)+3);
}