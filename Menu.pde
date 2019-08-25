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
        text(items[i].Label, ((IRBX+ILTX)/2), ((IRBY+ILTY)/2));
      }
      else
      {
        fill(255,255,255);
        rect(ILTX,ILTY,IRBX,IRBY);
        fill(0,0,0);
        text(items[i].ButtonCaption, (IRBX+ILTX)/2, ((IRBY+ILTY)/2));
      }
    }
    rectMode(CORNER);
  }
  int onKeyPressisShortcutchoosen()
  {
    for(int i = 0; i < items.length; i++)
    {
      if(items[i].Shortcut != null)
      {
        if(str(key).equals(items[i].Shortcut))
        {
          return(items[i].action);
        }
      }
    }
    if(defaultButtonIdx != -1)
    {
      return(items[defaultButtonIdx].action);
    }
    return(-1);
  }
  int onMouseDownButtonHit()
  {
    for(int i = 0; i < items.length; i++)
    {
      if(items[i].Label == null)
      {
        int itemheight = (RBY-LTY)/items.length;
        for(int o = 0; o < items.length; o++)
        {
          int ILTX = LTX;
          int ILTY = (itemheight * i) + LTY;
          int IRBX = RBX;
          int IRBY = ILTY + itemheight;
          if(mouseX >= ILTX && mouseX <= IRBX && mouseY >= ILTY && mouseY <= IRBY)
          {
            return(items[i].action);
          }
        }
      }
    }
    return(-1);
  }
  int defaultButtonIdx = -1;
  static final int NOTHING = -1;
  static final int OK = 0;
  static final int ITEMS = 1;
  static final int CASTING = 2;
  static final int CASTBUCKET = 3;
  static final int FLOWER = 4;
  static final int CASTTORCH = 5;
  static final int TORCH = 6;
  static final int GIVERESOURCES = 7;
  static final int SAVANNA = 8;
  static final int CAVE = 9;
  static final int BEACH = 10;
  static final int CLIFF = 12;
  static final int HIVE = 13;
  static final int FIRE = 14;
  static final int LABYRINTH = 15;
  static final int LABYRINTH2 = 16;
  static final int TREE = 17;
}
