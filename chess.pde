int[][] mSquare = new int[8][8];
boolean selected = false;
int sy = -1,sx = -1;
void setup()
{
  size(1000,1000);
  frameRate(30);
  rectMode(CORNER);
  textSize(50);
  textAlign(CENTER,CENTER);
  setupChess();
  loadChessImage();
}
int offset = 100;
void draw()
{
   background(128);
   grid BGrid = new grid();
   BGrid.drawGrid();
   if(selected)
   {
   for(int i = 0;i<8;i++)
    for(int j = 0;j<8;j++)
      if(mSquare[i][j] == 1)
      {
        fill(255,0,0,120);
        rect((j+1)*offset,(i+1)*offset,offset,offset);
      }
   }
   drawPiece();
}

void mousePressed()
{
  if(selected)
  {
    int px = sx, py = sy;
    println(px,py,sx,sy);
    getMouse();
    println(px,py,sx,sy);
    getSelectionMove(px,py,sx,sy);
    cleanSquare();
  }
  else
    getMouse();
}
