//Copyright Papa & Roman
byte[]theSavanna =
{1,1,2,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 2,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 2,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 2,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 2,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
 2,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
final byte MAP_BLACK = 0;
final byte MAP_BRICK = 1;
final byte MAP_GREEN = 2;
final byte MAP_WOOD = 3;
final byte MAP_YELLOW = 4;
final byte MAP_YELLOWSLEEPING = 5;
final byte MAP_HERO = 6;
final byte MAP_CAVE = 7;
final byte MAP_LIGHT = 8;
final byte MAP_SPIDER = 9;
final byte MAP_SPIDERSLEEPING = 10;
final byte MAP_VOID = 11;
final byte MAP_BRIDGE = 12;
final byte MAP_TILE_NUM = 13;
final int MAP_WIDTH = 40;
final int MAP_HEIGHT = 20;
final int TILE_WIDTH = 16;
final int TILE_HEIGHT = 16;
String menuopenreason;
int stonecount = 0;
int woodcount = 0;
int gatheringIdx;
int menukind;
final int MENUKIND_NOMENU = 0;
final int MENUKIND_WANTTOEXIT = 1;
final int MENUKIND_GATHERINGSTONES = 2;
final int MENUKIND_GATHERINGWOOD = 3;
final int MENUKIND_BUILDINGBRIDGE = 4;
final int MENUKIND_NOTENOUGHMATERIALS = 5;
final int MENUKIND_INVENTORY = 6;
final int MENUKIND_COLLISION = 7;
Location[] locations =
{
  new Location(), new Location()
};
final int LOCATION_SAVANNA = 0;
final int LOCATION_CAVE = 1;
int currentLocation;
byte[] createCave()
{
  byte A = 11;
  byte[]theCave = 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,A,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  return theCave;
}
byte[] theCave;
PImage[]tiles = new PImage [MAP_TILE_NUM];
void initAnimals()
{
  Location l = locations[LOCATION_SAVANNA];
  l.animalInfo = new RailAnimal[] 
  {
    new RailAnimal(), new RailAnimal()
  };
  //Animal 1
  l.animalInfo[0].animal_sprite_number = MAP_YELLOW;
  l.animalInfo[0].animalRoute = new int [][]
  {
    {
      3,2
    },
    {
      4,2
    },
    {
      5,2
    },
    { 
      4,2
    }
  };
  l.animalInfo[0].animal_sleeping = false;
  l.animalInfo[0].animal_sleeptime = 10;
  l.animalInfo[0].animal_sleepyness = 10;
  l.animalInfo[0].animal_stamina = 10;
  l.animalInfo[0].animal_stamina_max = 10;
  l.animalInfo[0].animalRouteIdx = 0;
  l.animalInfo[0].animalName = "Dimitrii";
  l.animalInfo[0].animal_sprite_number_awake = MAP_YELLOW;
  l.animalInfo[0].animal_sprite_number_sleeping = MAP_YELLOWSLEEPING;
  //Animal 2
  l.animalInfo[1].animal_sprite_number = MAP_YELLOW;
  l.animalInfo[1].animalRoute = new int [][]
  {
    {
      4,3
    },
    {
      5,3
    },
    {
      6,3
    },
    { 
      7,3
    },
    {
      8,3
    },
    {
      7,3
    },
    {
      6,3
    },
    {
      5,3
    }  
  };
  l.animalInfo[1].animal_sleeping = false;
  l.animalInfo[1].animal_sleeptime = 15;
  l.animalInfo[1].animal_sleepyness = 15;
  l.animalInfo[1].animal_stamina_max = 20;
  l.animalInfo[1].animal_stamina = 20;
  l.animalInfo[1].animalRouteIdx = 0;
  l.animalInfo[1].animalName = "Slavik";
  l.animalInfo[1].animal_sprite_number_awake = MAP_YELLOW;
  l.animalInfo[1].animal_sprite_number_sleeping = MAP_YELLOWSLEEPING;
  l = locations[LOCATION_CAVE];
  l.animalInfo = new RailAnimal[] 
  {
    new RailAnimal(), new RailAnimal()
  };
  //Spider 1
  l.animalInfo[0].animal_sprite_number = MAP_SPIDER;
  l.animalInfo[0].animalRoute = new int [][]
  {
    {
      7,9
    },
    {
      8,9
    },
    {
      9,9
    },
    { 
      8,9
    }
  };
  l.animalInfo[0].animal_sleeping = false;
  l.animalInfo[0].animal_sleeptime = 10;
  l.animalInfo[0].animal_sleepyness = 10;
  l.animalInfo[0].animal_stamina = 10;
  l.animalInfo[0].animal_stamina_max = 10;
  l.animalInfo[0].animalRouteIdx = 0;
  l.animalInfo[0].animalName = "Stanislav";
  l.animalInfo[0].animal_sprite_number_awake = MAP_SPIDER;
  l.animalInfo[0].animal_sprite_number_sleeping = MAP_SPIDERSLEEPING;
  //Spider 2
  l.animalInfo[1].animal_sprite_number = MAP_SPIDER;
  l.animalInfo[1].animalRoute = new int [][]
  {
    {
      4,10
    },
    {
      5,10
    },
    {
      6,10
    },
    { 
      7,10
    },
    {
      8,10
    },
    {
      7,10
    },
    {
      6,10
    },
    {
      5,10
    }  
  };
  l.animalInfo[1].animal_sleeping = false;
  l.animalInfo[1].animal_sleeptime = 15;
  l.animalInfo[1].animal_sleepyness = 15;
  l.animalInfo[1].animal_stamina_max = 20;
  l.animalInfo[1].animal_stamina = 20;
  l.animalInfo[1].animalRouteIdx = 0;
  l.animalInfo[1].animalName = "Vladimir";
  l.animalInfo[1].animal_sprite_number_awake = MAP_SPIDER;
  l.animalInfo[1].animal_sprite_number_sleeping = MAP_SPIDERSLEEPING;
}
void setup()
{
  size(640, 320);
  menukind = MENUKIND_NOMENU;
  theCave = createCave();
  locations[currentLocation].theMap = theSavanna; 
  locations[currentLocation].Hero_Position_Idx = 10;
  locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
  locations[LOCATION_CAVE].theMap = theCave;
  int i = 0;
  tiles[i++] = loadImage("TileBlack.jpg");
  tiles[i++] = loadImage("TileBrick.jpg");
  tiles[i++] = loadImage("TileGreen.jpg");
  tiles[i++] = loadImage("TileWood.jpg");
  tiles[i++] = loadImage("TileYellow.jpg");
  tiles[i++] = loadImage("TileYellowSleeping.jpg");
  tiles[i++] = loadImage("TileAdventurer.jpg");
  tiles[i++] = loadImage("TileCave.jpg");
  tiles[i++] = loadImage("TileLight.jpg");
  tiles[i++] = loadImage("TileSpider.jpg");
  tiles[i++] = loadImage("TileSpiderSleeping.jpg");
  tiles[i++] = loadImage("TileVoid.jpg");
  tiles[i++] = loadImage("TileBridge.jpg");
  i = 0;
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT); 
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);  
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);   
  tiles[i++].resize(TILE_WIDTH, TILE_HEIGHT);  
  initAnimals();
}
void openInventoryMenu()
{
  menukind = MENUKIND_INVENTORY;
  menuopenreason = "Inventory \n Stones = "+stonecount+" \n Wood = "+woodcount;
}
void mousePressed()
{
  int newHeroIdx = locations[currentLocation].Hero_Position_Idx;
  int HeroY = newHeroIdx/MAP_WIDTH;
  int HeroX = newHeroIdx-(HeroY*MAP_WIDTH);
  int HeroYnew = HeroY;
  boolean HeroWrongY = false;
  int mouseXC = mouseX/TILE_WIDTH;
  int mouseYC = mouseY/TILE_HEIGHT;
  if(menukind == MENUKIND_NOMENU)
  {
    if(mouseXC > HeroX)
    {
      newHeroIdx++;
      HeroYnew = newHeroIdx/MAP_WIDTH;
      if(HeroYnew != HeroY)
      {
        HeroWrongY = true;
      }
    }
    if(mouseXC < HeroX)
    {
      newHeroIdx--;
      HeroYnew = newHeroIdx/MAP_WIDTH;
      if(HeroYnew != HeroY)
      {
        HeroWrongY = true;
      }
    }
    if(mouseYC < HeroY)
    {
      newHeroIdx = newHeroIdx - MAP_WIDTH;
    }
    if(mouseYC > HeroY)
    {
      newHeroIdx = newHeroIdx + MAP_WIDTH;
    }
    locations[currentLocation].heroMoveChecker(newHeroIdx, HeroWrongY);
    if(mouseYC == HeroY && mouseXC == HeroX)
    {
      openInventoryMenu();
      return;
    }
  }
  if(menukind == MENUKIND_WANTTOEXIT)
  {
    if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
    {
      exit();
    }
    if(mouseX >= 290 && mouseX <= 510 && mouseY >= 100 && mouseY <= 240)
    {
      menukind = MENUKIND_NOMENU;
      return;
    }
  }
  if(menukind == MENUKIND_GATHERINGWOOD || menukind == MENUKIND_GATHERINGSTONES || menukind == MENUKIND_BUILDINGBRIDGE)
  {
    if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
    {
      if(menukind == MENUKIND_GATHERINGWOOD)
      {
        woodcount++;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].theMap[gatheringIdx] = MAP_BLACK;
      }
      if(menukind == MENUKIND_GATHERINGSTONES)
      {
        stonecount++;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].theMap[gatheringIdx] = MAP_BLACK;
        return;
      }
      if(menukind == MENUKIND_BUILDINGBRIDGE)
      {
        if(stonecount >= 5 && woodcount >= 5)
        {
          stonecount = stonecount - 5;
          woodcount = woodcount - 5;
          menukind = MENUKIND_NOMENU;
          locations[currentLocation].theMap[gatheringIdx] = MAP_BRIDGE;
          return;
        }
        else
        {
          menukind = MENUKIND_NOTENOUGHMATERIALS;
          menuopenreason = "Not enough Stones/Wood! \nYou need 5 of both, but you have \n"+stonecount+" Stones and "+woodcount+" Wood.";
          return;
        }
      }
    }
    if(mouseX >= 290 && mouseX <= 510 && mouseY >= 100 && mouseY <= 240)
    {
      menukind = MENUKIND_NOMENU;
      return;
    }
  }
  if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
  {
    menukind = MENUKIND_NOMENU;
    return;
  }
}
void keyPressed()
{
  menukind = MENUKIND_NOMENU;
  if(key == CODED)
  {
    int newHeroIdx = locations[currentLocation].Hero_Position_Idx;
    int HeroY = newHeroIdx/MAP_WIDTH;
    int HeroYnew;
    boolean HeroWrongY = false;
    if(keyCode == UP)
    {
      newHeroIdx = newHeroIdx - MAP_WIDTH;    
    }
    if(keyCode == LEFT)
    {
      newHeroIdx--;
      HeroYnew = newHeroIdx/MAP_WIDTH;
      if(HeroYnew != HeroY)
      {
        HeroWrongY = true;
      }
    }
    if(keyCode == RIGHT)
    {
      newHeroIdx++;
      HeroYnew = newHeroIdx/MAP_WIDTH;
      if(HeroYnew != HeroY)
      {
        HeroWrongY = true;
      }
    }
    if(keyCode == DOWN)
    {
      newHeroIdx = newHeroIdx + MAP_WIDTH;
    }
    locations[currentLocation].heroMoveChecker(newHeroIdx, HeroWrongY);
  }
  if(key == 121 || key == 89)//Upper- & Lowercase Y
  {
    if(menukind == MENUKIND_WANTTOEXIT)
    {
      exit();
    }
  }
  if(key == 110 || key == 78)//Upper- & Lowercase N
  {
    if(menukind == MENUKIND_WANTTOEXIT)
    {
      menukind = MENUKIND_NOMENU;
    }
  }
  if(key == 27) //ESC Key
  {
    key=0;
    menukind = MENUKIND_WANTTOEXIT;
    menuopenreason = "Leave Game?";
  }
  if(key == 66 || key == 98) //Upper- & Lowercase B
  {
    openInventoryMenu();
  }
}
void draw()
{
  if(menukind == MENUKIND_NOMENU)
  {
    locations[currentLocation].draw_savanna();
  }
  else
  {
    drawmenu();
  }
}
void drawmenu()
{
  fill(0,0,0);
  rect(50, 50, 480, 200);
  fill(255,255,255);
  text(menuopenreason, 60, 70);
  if(menukind == MENUKIND_WANTTOEXIT)
  {
    rect(60, 100, 220, 140);
    rect(290, 100, 220, 140);
    fill(0, 0, 0);
    text("Y", 170, 170);
    text("N", 400, 170);
  }
  if(menukind == MENUKIND_INVENTORY || menukind == MENUKIND_COLLISION)
  {
    rect(60, 100, 220, 140);
    fill(0,0,0);
    text("O.K.", 170, 170);
    if(menukind == MENUKIND_INVENTORY)
    {
      fill(255,255,255);
      rect(290, 100, 220, 140);
      fill(0,0,0);
      text("Open Settings", 400, 170);      
    }
  }
  if(menukind == MENUKIND_BUILDINGBRIDGE || menukind == MENUKIND_GATHERINGSTONES || menukind == MENUKIND_GATHERINGWOOD)
  {
    rect(60, 100, 220, 140);
    rect(290, 100, 220, 140);
    fill(0,0,0);
    if(menukind == MENUKIND_BUILDINGBRIDGE)
    {
      text("Build", 170, 170);
    }
    else
    {
      text("Gather", 170, 170);
    }
    text("Leave", 400, 170);
  }
}
