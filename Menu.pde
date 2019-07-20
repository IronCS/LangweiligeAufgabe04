class Menu
{
  String [] options;

  int marginY = 50;
  int marginX = 50;
  int lineSpace = 10;
  int menuH;
  int menuW;
  int lineHeight;
  
  void recalc()
  {
    menuH = height - marginY*2;
    menuW = width - marginX*2;
    lineHeight = menuH / options.length;
    //println("dh="+displayHeight+";dw="+displayWidth+";mh="+menuH+";mw="+menuW);
  }
  
  void draw()
  {
    recalc();
    rectMode(CORNERS);
    fill(0,0,0);
    rect(marginX, marginY, marginX+menuW, marginY+menuH);
    /**/
    for (int i = 0; i < options.length; ++i) {
      fill(200,200,200);
      int x1=marginX;
      int y1=marginY+i*lineHeight;
      int x2=marginX+menuW;
      int y2=marginY+i*lineHeight+lineHeight-lineSpace;
      /*
      print("i="+i);
      print(";x1="+x1);
      print(";y1="+y1);
      print(";x2="+x2);
      print(";y2="+y2);
      println(".");
      */
      rect(x1, y1, x2, y2);
      fill(0,0,0);
      pushMatrix();
      float scaleFactor = 2;
      scale(scaleFactor);
      text(options[i], ((float)marginX*2)/scaleFactor, ((float)(marginY+i*lineHeight+lineHeight/2))/scaleFactor);
      popMatrix();
    }
    /**/
    rectMode(CORNER);
  }
  
  int hitTestAndGetChoice(int x, int y)
  {
    recalc();  
    for (int i = 0; i < options.length; ++i) {
      if (x >= marginX && y >= marginY+i*lineHeight && x <= marginX+menuW && y <= marginY+i*lineHeight+lineHeight-lineSpace)
      {
        return i;
      }
    }
    return -1;
  }  
}
