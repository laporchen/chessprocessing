class grid
{
  int offset = int(width/10);
  grid()
  {
    
  }
  int[][] locate = new int[8][8];
  void drawGrid()
  {
    float y = 80;
    float x = 80;
    for(int i = 0;i<9;i++)
      {
        line(offset + x*i,offset ,offset + x*i,height - offset);
        line(offset,offset + y*i,width - offset, offset + y*i);
        
      }
     for(int i = 0;i<8;i++)
       for(int j = 0;j<8;j++){
         if((i+j)%2 == 0)
         {
           fill(133,94,66);
           rect((j+1)*offset,(i+1)*offset,offset,offset);
         }
         else
         {
           fill(299,221,215);
           rect((j+1)*offset,(i+1)*offset,offset,offset);
         }
       }
  }

}
