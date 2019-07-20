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
final byte MAP_TILE_NUM = 12;
final int MAP_WIDTH = 40;
final int MAP_HEIGHT = 20;
final int TILE_WIDTH = 16;
final int TILE_HEIGHT = 16;
boolean menuopen;
boolean wanttoexit;
final int VIEW_MODE_2D = 0;
final int VIEW_MODE_3D = 1;
int viewMode = VIEW_MODE_2D;
float alphaX = PI*2/360*45;
float translateByZ = -400;
String menuopenreason;
Menu sysMenuObj;
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
  size(640, 320, P3D);
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
  initAnimals();
}
void openInventoryMenu()
{
  menuopen = true;
  menuopenreason = "Inventory \n Rocks = 0 \n Wood = 0"; 
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
  }
  if(mousePressed)
  {
    if(wanttoexit)
    {
      if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
      {
        exit();
      }
      if(mouseX >= 290 && mouseX <= 510 && mouseY >= 100 && mouseY <= 240)
      {
        wanttoexit = false;
        menuopen = false;
      }
    }
    else
    {
      if (sysMenuObj != null)
      {
        int choice = sysMenuObj.hitTestAndGetChoice(mouseX, mouseY);
        if (choice != -1)
        {
          // any hit to choice result with non-negative index inside string
          // array of options
          println("sysMenu choice="+choice);
          // overwrite the reference to sys menu object with "null"
          // so that garbage collector can destroy and free up memory taken by
          // this object
          if (choice == 0) // 3d view
          {
            viewMode = VIEW_MODE_3D;
          }
          if (choice == 1) // 2d view
          {
            viewMode = VIEW_MODE_2D;
          }
          // any other choice just closes sys menu at the moment
          sysMenuObj = null;
          menuopen = false;
        }
      }
      else
      {
        if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
        {
          menuopen = false; //OK BUTTON PRESSED
        }
        if(menuopenreason.startsWith("Inventory") && mouseX >= 290 && mouseX <= 510 && mouseY >= 100 && mouseY <= 240)
        {
          menuopen = true; //Second button "Open settings" pressed
          // create instance of sys menu and set it up with possible options
          sysMenuObj = new Menu();
          sysMenuObj.options = new String[] {
            "3D view",                                         // 0
            "2D view",                                         // 1
            "Change value of angle alpha ("+alphaX+")",        // 2
            "Change value of translateByZ ("+translateByZ+")", // 3
            "-- Exit sys menu without changes --"              // 4
          };
        }
      }
    }
  }
}
void keyPressed()
{
  menuopen = false;
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
    if(wanttoexit)
    {
      exit();
    }
  }
  if(key == 110 || key == 78)//Upper- & Lowercase N
  {
    if(wanttoexit)
    {
      menuopen = false;
      wanttoexit = false;
    }
  }
  if(key == 27) //ESC Key
  {
    key=0;
    menuopen = true;
    wanttoexit = true;
    menuopenreason = "Leave Game?";
  }
  if(key == 66 || key == 98) //Upper- & Lowercase B
  {
    openInventoryMenu();
  }
}
void draw()
{
  if(!menuopen)
  {
    if (viewMode == VIEW_MODE_3D)
    {
      pushMatrix();
      /*
      translate(MAP_WIDTH*TILE_WIDTH/2,MAP_HEIGHT*TILE_HEIGHT/2);
      rotateZ(PI/3);
      translate(-MAP_WIDTH*TILE_WIDTH/2,-MAP_HEIGHT*TILE_HEIGHT/2);
      translate(0,MAP_HEIGHT*TILE_HEIGHT/2);
      rotateX(PI/5);
      translate(0,-MAP_HEIGHT*TILE_HEIGHT/2);
      translate(0,0,-200);
      */ 
      rotateX(alphaX);
      translate(0,0,translateByZ);
    }

    locations[currentLocation].draw_savanna();

    if (viewMode == VIEW_MODE_3D)
    {
      popMatrix();
    }
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
  if(wanttoexit)
  {
    rect(60, 100, 220, 140);
    rect(290, 100, 220, 140);
    fill(0, 0, 0);
    text("Y", 170, 170);
    text("N", 400, 170);
  }
  else
  {
    if (sysMenuObj == null)
    {
      fill(255,255,255);
      rect(60, 100, 220, 140);
      fill(0,0,0);
      text("O.K.", 170, 170);
      if (menuopenreason.startsWith("Inventory"))
      {
        fill(255,255,255);
        rect(290, 100, 220, 140);
        fill(0,0,0);
        text("Open Settings", 400, 170);
      }
    }
    else
    {
      // there is sys menu object exists, draw it
      sysMenuObj.draw();
    }
  }
}
