int startX = 0;
int startY=0;
int endX=width;
int endY=height;

void setup()
{
  size(300,300);
  background(0);
  strokeWeight((int)(Math.random()*20)+3);
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while(endX<width+1){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*10);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }

}
void mousePressed()
{ 
  startX = 0;
  startY=0;
  endX=width;
  endY=height;
  noStroke();
  fill(0,0,0);
  rect(0,0,1000,1000);
  strokeWeight((int)(Math.random()*20)+3);
}