piece[] pieces = new piece[32];
PImage[] pic = new PImage[12];
void drawPiece()
{
  for (int i = 0; i<8; i++)
  {
    pieces[i].draw(0);
    pieces[i + 16].draw(6);
  }
  pieces[8].draw(1);
  pieces[9].draw(2);
  pieces[10].draw(3);
  pieces[11].draw(3);
  pieces[12].draw(4);
  pieces[13].draw(4);
  pieces[14].draw(5);
  pieces[15].draw(5);
  pieces[24].draw(7);
  pieces[25].draw(8);
  pieces[26].draw(9);
  pieces[27].draw(9);
  pieces[28].draw(10);
  pieces[29].draw(10);
  pieces[30].draw(11);
  pieces[31].draw(11);
}
void loadChessImage()
{
  //0-5 white,6-11 black, PKQBNR
  pic[0] = loadImage("/data/wp.png");
  pic[1] = loadImage("/data/wq.png");
  pic[2] = loadImage("/data/wk.png");
  pic[3] = loadImage("/data/wb.png");
  pic[4] = loadImage("/data/wn.png");
  pic[5] = loadImage("/data/wr.png");
  pic[6] = loadImage("/data/bp.png");
  pic[7] = loadImage("/data/bq.png");
  pic[8] = loadImage("/data/bk.png");
  pic[9] = loadImage("/data/bb.png");
  pic[10] = loadImage("/data/bn.png");
  pic[11] = loadImage("/data/br.png");
}
void setupChess()
{
  for (int i = 0; i<8; i++)
  {
    for (int j = 0; j<8; j++)
      mSquare[i][j] = 0;
    pieces[i] = new piece(i, 6);
    pieces[i + 16] = new piece(i, 1);
  }
  pieces[8] = new piece(3, 7);
  pieces[9] = new piece(4, 7);
  pieces[10] = new piece(2, 7);
  pieces[11] = new piece(5, 7);
  pieces[12] = new piece(1, 7);
  pieces[13] = new piece(6, 7);
  pieces[14] = new piece(0, 7);
  pieces[15] = new piece(7, 7);
  pieces[24] = new piece(3, 0);
  pieces[25] = new piece(4, 0);
  pieces[26] = new piece(2, 0);
  pieces[27] = new piece(5, 0);
  pieces[28] = new piece(1, 0);
  pieces[29] = new piece(6, 0);
  pieces[30] = new piece(0, 0);
  pieces[31] = new piece(7, 0);
}
//P P P P P P P P Q K B B N N R R
