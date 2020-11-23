void getSelectionMove(int px,int py,int movey,int movex)
{
  for(int i = 0;i<32;i++)
    if(pieces[i].isSelected(px,py))
    {
      println(px,py,movex,movey);
      pieces[i].move(movex,movey); 
    }
  
  return;
}
void cleanSquare()
  {
    for(int i = 0;i<8;i++)
      for(int j = 0;j<8;j++)
        mSquare[j][i] = 0;
    sx = -1;
    sy = -1;
    selected = false;
  }
