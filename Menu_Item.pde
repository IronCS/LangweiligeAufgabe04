class Menu_Item
{
  String Label;
  String ButtonCaption;
  int action;
  String Shortcut;
  Menu_Item(String Elabel, String EButtonCaption, int Eaction, String EShortcut)
  {
    Label = Elabel;
    ButtonCaption = EButtonCaption;
    action = Eaction;
    Shortcut = EShortcut;
  }
  boolean isLabel()
  {
    if(Label != null)
    {
      return(true);
    }
    else
    {
      return(false);
    }
  }
}
