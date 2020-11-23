void getMouse()
{
  int x = mouseX;
  int y = mouseY;
  int os = int(width/10);
  for(int i = 0;i<8;i++)
    for(int j = 0;j<8;j++)
      if((os*(i+1)< x && os*(i+2) > x)&&(os*(j+1)< y && os*(j+2) > y))
      {
        mSquare[j][i] = 1;
        selected = true;
        sx = j;
        sy = i;
      }
      else
      {
        mSquare[j][i] = 0;
      }
     
}
