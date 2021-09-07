
// curva de bezier grau 3

   float p1x = 100;
   float p1y = 300;
   float p2x = 400;
   float p2y = 700;
   float p3x = 500;
   float p3y = 100;
   float p4x = 700;
   float p4y = 300;
   
   boolean arrastandoA = false;
   boolean arrastandoB = false;
   boolean arrastandoC = false;
   boolean arrastandoD = false;

void setup()
{
  size(800, 800);
}

void draw()
{
   background(#836FFF);
   
  if(arrastandoA)
  {
    p1x = mouseX;
    p1y = mouseY;
  }
  else if(arrastandoB)
  {
    p2x = mouseX;
    p2y = mouseY;
  }
   else if(arrastandoC)
  {
    p3x = mouseX;
    p3y = mouseY;
  }
  else if(arrastandoD)
  {
    p4x = mouseX;
    p4y = mouseY;
  }
   
   noFill();
   beginShape();
   vertex(p1x, p1y);
   for(float t=0; t<= 1; t += 0.01) // esse loop faz a imagem ficar mais suave, esse 0.01
                                     // deixa a imagem melhor. se houver duvida atribuir t += 1.0 
   {
    float ax = p1x + t*(p2x-p1x);
    float ay = p1y + t*(p2y-p1y);
    float bx = p2x + t*(p3x-p2x);
    float by = p2y + t*(p3y-p2y);
    float cx = p3x + t*(p4x-p3x);
    float cy = p3y + t*(p4y-p3y);
    float dx = ax + t*(bx-ax);
    float dy = ay + t*(by-ay);
    float ex = bx + t*(cx-bx);
    float ey = by + t*(cy-by);
    float fx = dx + t*(ex-dx);
    float fy = dy + t*(ey-dy);

   vertex(fx, fy);
   }
   endShape();
 
  fill(255, 0, 0);
  circle(p1x, p1y, 10);
  circle(p2x, p2y, 10);
  circle(p3x, p3y, 10);
  circle(p4x, p4y, 10);

}

void mousePressed()
{
    if(dist(p1x,p1y,mouseX,mouseY)<10)
    {
      arrastandoA = true;
    }
    if(dist(p2x,p2y,mouseX,mouseY)<10)
    {
      arrastandoB = true;
    }
  
    if(dist(p3x,p3y,mouseX,mouseY)<10)
    {
      arrastandoC = true;
    }
    
    if(dist(p4x,p4y,mouseX,mouseY)<10)
    {
      arrastandoD = true;
    }
}

void mouseReleased()
{
  arrastandoA = false;
  arrastandoB = false;
  arrastandoC = false;
  arrastandoD = false;
}
