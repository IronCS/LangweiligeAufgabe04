class Menu 
{
  int LTX = 50;
  int LTY = 50;
  int RBX = pixelWidth - 50;
  int RBY = pixelHeight - 50;
  Menu_Item[] items;
  void onDrawMenu()
  {
    rectMode(CORNERS);
    int itemheight = (RBY-LTY)/items.length;
    for(int i = 0; i < items.length; i++)
    {
      int ILTX = LTX;
      int ILTY = (itemheight * i) + LTY;
      int IRBX = RBX;
      int IRBY = ILTY + itemheight;
      if(items[i].isLabel())
      {
        fill(0,255,0);
        rect(ILTX,ILTY,IRBX,IRBY);
        fill(0,0,0);
        text(items[i].Label, (IRBY-ILTY)/2, (IRBX-ILTX)/2);
      }
      else
      {
        fill(255,255,255);
        rect(ILTX,ILTY,IRBX,IRBY);
        fill(0,0,0);
        text(items[i].ButtonCaption, (IRBY-ILTY)/2, (IRBX-ILTX)/2);
      }
    }
    rectMode(CORNER);
  }
  int onKeyPressisShortcutchoosen()
  {
    return(-1);
  }
  int onMouseDownButtonHit()
  {
    return(-1);
  }
  int defaultButtonIdx;
  static final int NOTHING = -1;
  static final int OK = 0;
  static final int ITEMS = 1;
}
