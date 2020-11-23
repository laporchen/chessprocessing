class piece
{
  PImage pc;
  int x,y;
  int offset = int(width/10);
  piece(int px,int py)
  {
    x = px;
    y = py;
  }
  int getX()
  {
    return x;
  }
  int getY()
  {
    return y;
  }
  void move(int px,int py)
  {
    x = px;
    y = py;
  }
  void draw(int n)
  {
    image(pic[n],(x+1)*offset ,(y+1)*offset,offset,offset);
  }
  boolean isSelected(int py,int px)
  {
    if(x == px && y == py)
      return true;
    else
      return false;
  }
}





/*
0 R N B Q K B N R
1 P P P P P P P P
2
3
4
5
6 P P P P P P P P
7 R N B Q K B N R
  0 1 2 3 4 5 6 7
chessPos
*/
