int startX=150;
int startY=0;
int endX=150;
int endY=0;

void setup()
{
  size(500,500);
  strokeWeight(2);
  background(0);
}

void draw()
{
  lightning();
}

void lightning()
{
  stroke((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*25));
  while (endX <= 300) {
    endX=startX+((int)(Math.random()*19)-9);
    endY=startY+((int)(Math.random()*10));
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
stroke(5);
fill(200,200,250);
ellipse(250,20,550,150);
}

void mousePressed()
{
  startX=(int)(Math.random()*300);
  startY=0;
  endX=150;
  endY=(int)(Math.random()*300);
}
