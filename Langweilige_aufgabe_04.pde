//Copyright Papa & Roman
boolean onTree = false;
byte[] createSavanna()
{
  byte A = MAP_SAVANNA1;
  byte B = MAP_SAVANNA2;
  byte C = MAP_CLIFFENTRY;
  byte[]theSavanna =
  {1,1,2,B,A,7,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   3,B,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   1,1,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   3,B,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   1,1,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   3,B,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   1,1,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   3,B,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   1,1,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   3,B,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   1,1,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   3,B,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,
   1,1,2,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,
   3,B,2,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,B,A,};
  return theSavanna;
}
byte[]theSavanna;
byte[] createBeach()
{
  byte S = MAP_SAND;
  byte W = MAP_WATER;
  byte C = MAP_CLIFFENTRY;
  byte[]thelocalBeach = 
  {S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
   S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,
   S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,
   7,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,};
  return thelocalBeach;
}
byte[]theBeach;
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
final byte MAP_NEST = 13;
final byte MAP_SNAKEHEAD = 14;
final byte MAP_SNAKEBODY = 15;
final byte MAP_SNAKETAIL = 16;
final byte MAP_SNAKEDEAD = 17;
final byte MAP_SAVANNA1 = 18;
final byte MAP_SAVANNA2 = 19;
final byte MAP_SAND = 20;
final byte MAP_WATER = 21;
final byte MAP_WAVE = 22;
final byte MAP_SANDTRANSFER = 23;
final byte MAP_BOAT = 24;
final byte MAP_BOATNOSAIL = 25;
final byte MAP_CLIFFENTRY = 26;
final byte MAP_CLIFFSIDE = 27;
final byte MAP_BOULDER = 28;
final byte MAP_HIVETRANSFER = 29;
final byte MAP_FLOWER = 30;
final byte MAP_BEE = 31;
final byte MAP_BURNABLE = 32;
final byte MAP_FIRE1 = 33;
final byte MAP_FIRE2 = 34;
final byte MAP_FIRE3 = 35;
final byte MAP_BURNABLETRANSFER = 36;
final byte MAP_BUCKET = 37;
final byte MAP_EXTINGUISHED1 = 38;
final byte MAP_EXTINGUISHED2 = 39;
final byte MAP_EXTINGUISHED3 = 40;
final byte MAP_HIVE = 41;
final byte MAP_CACTUS = 42;
final byte MAP_LABYRINTH = 43;
final byte MAP_TORCH = 44;
final byte MAP_TREE = 45;
final byte MAP_TREEPART1 = 46;
final byte MAP_TREEPART2 = 47;
final byte MAP_TREEPART3 = 48;
final byte MAP_TREEPART4 = 49;
final byte MAP_TREEPART5 = 50;
final byte MAP_TREEPART6 = 51;
final byte MAP_TREEPART7 = 52;
final byte MAP_TREEPART8 = 53;
final byte MAP_TREEPART9 = 54;
final byte MAP_TREEPART10 = 55;
final byte MAP_TREEPART11 = 56;
final byte MAP_TREEPART12 = 57;
final byte MAP_TREEPART13 = 58;
final byte MAP_TELEPORTMARK = 59;
final byte MAP_TILE_NUM = 60;
final byte MAP_NOTHING = (byte)255;
final int MAP_WIDTH = 40;
final int MAP_HEIGHT = 20;
int TILE_WIDTH = 16;
int TILE_HEIGHT = 16;
final int SNAKESPRITE = 0;
final int SNAKESTANDINGON = 1;
final int SNAKEIDX = 2;
final int SNAKEALREADYGATHERED = 3;
int[][]theSnake = {{MAP_SNAKETAIL, MAP_BLACK, 0, 0}, {MAP_SNAKEBODY, MAP_BLACK, 1, 0}, {MAP_SNAKEBODY, MAP_BLACK, 2, 0}, {MAP_SNAKEBODY, MAP_BLACK, 3, 0}, {MAP_SNAKEBODY, MAP_BLACK, 4, 0}, {MAP_SNAKEBODY, MAP_BLACK, 5, 0}, {MAP_SNAKEBODY, MAP_BLACK, 6, 0}, {MAP_SNAKEHEAD, MAP_BLACK, 7, 0}};
final int DIR_UP = 0;
final int DIR_RT = 1;
final int DIR_DN = 2;
final int DIR_LT = 3;
final int WAVEX = 0;
final int WAVEY = 1;
final int WAVEDIRECTION = 2; //Up = 0, Right = 1, Down = 2, Left = 3;
int[][]theWave = {{-2,-2,2}, {-2,-2,2}};
final int BOULDERIDX = 0;
final int BOULDERSTANDINGON = 1;
int[][]theBoulder = {{682, MAP_SAND}, {602, MAP_SAND}, {522, MAP_SAND}, {442, MAP_SAND}, {362, MAP_SAND}};
final int BEEX = 0;
final int BEEY = 1;
int[][]theBee = {{0,0}, {2,4}, {3,5}, {5,7}, {6,8}, {21, 18}, {21, 19}, {20, 18}, {19, 18}, {18, 19}, {17, 18}, {16, 19}, {15, 18}, {14, 19}};
final byte FIREX = 0;
final byte FIREY = 1;
final byte FIREEXTINGUISHED = 2;
int[][]theFires = {{3,4,0}, {4,4,0}, {5,4,0}, {3,5,0}, {5,5,0}, {3,6,0}, {4,6,0}, {5,6,0}, {0,0,0}, {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}};
final int TREEX = 0;
final int TREEY = 1;
final int TREELASTX = 2;
final int TREELASTY = 3;
int[][]theTree = {{11,2,11,2}, {22,11,22,11}};
String menuopenreason;
int supersecretcheatcode = 0;
int supersecretcheatcode2 = 0;
int stonecount = 0;
int needlecount = 0;
int woodcount = 0;
int snakecount = 0;
int flowercount = 0;
int bucketcount = 0;
int torchcount = 0;
int gatheringIdx;
int menukind;
int snakeIdx;
int snakeLocation;
final byte BOATIDX = 0;
final byte INBOAT = 1;
final byte BOATSPRITE = 2;
int theBoat[] = {0, 0, MAP_SAND};
final int MENUKIND_NOMENU = 0;
final int MENUKIND_WANTTOEXIT = 1;
final int MENUKIND_GATHERINGSTONES = 2;
final int MENUKIND_GATHERINGWOOD = 3;
final int MENUKIND_GATHERINGSNAKE = 4;
final int MENUKIND_BUILDINGBRIDGE = 5;
final int MENUKIND_BUILDINGBOAT = 6;
final int MENUKIND_NOTENOUGHMATERIALS = 6;
final int MENUKIND_INVENTORY = 7;
final int MENUKIND_COLLISION = 8;
final int MENUKIND_ENTERINGBOAT = 9;
final int MENUKIND_LEAVINGBOAT = 10;
final int MENUKIND_GATHERINGFLOWER = 11;
final int MENUKIND_PLACINGFLOWER = 12;
final int MENUKIND_FILLINGBUCKET = 13;
final int MENUKIND_EXTINGUISHINGFIRE = 14;
final int MENUKIND_PICKINGUPBUCKET = 15;
final int MENUKIND_GATHERINGNEEDLES = 16;
Location[] locations =
{
  new Location(), new Location(), new Location(), new Location(), new Location(), new Location(), new Location(), new Location(), new Location()
};
final int LOCATION_SAVANNA = 0;
final int LOCATION_CAVE = 1;
final int LOCATION_BEACH = 2;
final int LOCATION_CLIFF = 3;
final int LOCATION_HIVE = 4;
final int LOCATION_FIRE = 5;
final int LOCATION_LABYRINTH = 6;
final int LOCATION_LABYRINTH2 = 7;
final int LOCATION_TREE = 8;
int currentLocation = LOCATION_SAVANNA;
int currentSnakePart;
final int TORCHIDX = 0;
int torches = 0;
int theTorches[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
byte[] createCave()
{
  byte A = MAP_VOID;
  byte S = MAP_SAND;
  byte T = MAP_SANDTRANSFER;
  byte[]theCave = 
   {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,S,S,T,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,S,S,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,S,
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
byte[] createHive()
{
  byte H = MAP_HIVE;
  byte B = MAP_BURNABLE;
  byte T = MAP_BURNABLETRANSFER;
  byte[]theHive = 
   {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
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
    0,0,0,0,H,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    T,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  return theHive;
}
byte[] theHive;
byte FlowerY = 18;
byte FlowerX = 4;
byte[]createFire()
{
	byte B = MAP_BURNABLE;
  byte T = MAP_BURNABLETRANSFER;
  byte W = MAP_WATER;
  byte L = MAP_LABYRINTH;
	byte[]theFire =
	{
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W,W,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W,
		0,0,0,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,B,B,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,B,B,B,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,B,B,L,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,B,B,B,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,B,B,B,B,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,B,0,0,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,T};
	return theFire;
}
byte[]theFire;
byte[] createCliff()
{
  byte F = MAP_FLOWER;
  byte C = MAP_CLIFFSIDE;
  byte S = MAP_SAND;
  byte T = MAP_SANDTRANSFER;
  byte B = MAP_BOULDER;
  byte V = MAP_SAVANNA1;
  byte H = MAP_HIVETRANSFER;
  byte K = MAP_CACTUS;
  byte[]theCliff = 
   {C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,K,S,K,S,K,S,K,S,K,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,B,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,B,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,B,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,S,C,C,C,C,S,S,S,S,S,S,S,S,S,C,
    C,S,B,S,C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,V,V,S,S,S,S,C,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,C,F,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,V,S,S,S,C,S,C,S,S,S,S,S,S,S,S,S,C,
    C,S,B,S,C,H,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,V,V,C,S,C,S,C,S,S,S,S,S,S,S,S,S,C,
    C,S,S,S,C,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,S,C,C,C,C,S,S,S,C,S,S,S,S,S,S,S,S,S,C,
    T,S,S,S,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C};
  return theCliff;
}
byte[] theCliff;
byte[] parseLocationFromString(String locAsString, int [][] mapping)
{
  byte []ret = new byte[locAsString.length()];
  for(int i = 0; i < ret.length; i++)
  {
    for(int o = 0; o < mapping.length; o++)
    {
      if(locAsString.charAt(i) == mapping[o][0])
      {
        ret[i] = (byte)mapping[o][1];
        break;
      }
    }
  }
  return ret;
}
byte[] iteratePngLabyrinth(String FileName, int[][]ColorsToTiles)
{
  PImage pngLab = loadImage(FileName);
  pngLab.loadPixels();
  byte []ret2 = new byte[pngLab.pixelHeight * pngLab.pixelWidth];
  for(int y = 0; y < pngLab.pixelHeight; ++y) {
    System.out.println("----"); // new line separator every y-jump
    for(int x = 0; x < pngLab.pixelWidth; ++x) {
      int addr = y*pngLab.pixelWidth + x;
      for(int i = 0; i < ColorsToTiles.length; i++)
      {
        if (pngLab.pixels[addr] == color(ColorsToTiles[i][0],ColorsToTiles[i][1],ColorsToTiles[i][2])) 
        {
          ret2[y*pngLab.pixelWidth + x] = (byte)ColorsToTiles[i][3];
          break;
        }
      }
    }
  }
  return ret2;
}
byte[] createTree()
{ 
  int[][]ColorsToTiles = {{255,255,255, MAP_SAVANNA2}, {0,255,0,MAP_GREEN}, {0,0,0,MAP_CLIFFSIDE}, {67,16,13,MAP_WOOD}, {9,39,57, MAP_BRICK}};
  byte[]thelocalLabyrinth = iteratePngLabyrinth("Trees.png", ColorsToTiles);
  return(thelocalLabyrinth);
}
byte[]theTrees;
byte[] createLabyrinth()
{
  String labStr = 
   "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"
  +"O           O     O                O   O"
  +"O OOOOOOOOOOO   O O OO  OOOOOO  O  O O O"
  +"O O         O  OO O O   O    OO O OOOO O"
  +"O OO  OO      OO  OOOO  O O  O  O    O O"
  +"O O    OOOOOOOO  OO    OO O  OOOOOOO O O"
  +"O O OO      O       O   O O       O  O O"
  +"O OOO       O OOOOOOOOOOO OOOOOOO O OO O"
  +"O     OOOOO O O     O  O  O       O  O O"
  +"OOOOOOO   O O O     O  O OO  OOOOOOO O O"
  +"O         O O OOO O O  O  O       O  O O"
  +"OOOOO     O O O   OOOO OO OOOOOOO O OO O"
  +"O   O   OOO O O   O  O    O   O   O  O O"
  +"O O O   O   O   O O  OOOOOO   O OOO OO O"
  +"O O     O OOOOOOO O       O O O O      O"
  +"O O OOOOO O O   O O O OOO OOO O OOOO   O"
  +"O O     O   O O   O OOO   O   O O  O OOO"
  +"O OO    OOO O OOOOO O   OOO   O O OO O O"
  +"L  O        O       O O     O   O      O"
  +"OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO M"
   ;

  byte[]thelocalLabyrinth = parseLocationFromString(labStr, new int[][] { {'O', MAP_CLIFFSIDE}, {' ', MAP_SAND}, {'M', MAP_CAVE}, {'L', MAP_LABYRINTH} });
  
  //byte[]thelocalLabyrinth = iteratePngLabyrinth();
  return(thelocalLabyrinth);
}
byte[] theLabyrinth;
byte[] createLabyrinth2()
{ 
  int[][]ColorsToTiles = {{255,255,255,MAP_SAND}, {255,0,0,MAP_CAVE}, {0,255,0,MAP_TREE}, {0,0,0,MAP_CLIFFSIDE}};
  byte[]thelocalLabyrinth = iteratePngLabyrinth("19-by-9-orthogonal-maz-4e.png", ColorsToTiles);
  return(thelocalLabyrinth);
}
byte[] theLabyrinth2;
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
  byte animalX = (byte)l.animalInfo[0].animalRoute[0][0];
  byte animalY = (byte)l.animalInfo[0].animalRoute[0][1];
  l.animalInfo[0].animalSteppedOn = locations[currentLocation].getByteOn(animalX, animalY);
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
  animalX = (byte)l.animalInfo[1].animalRoute[0][0];
  animalY = (byte)l.animalInfo[1].animalRoute[0][1];
  l.animalInfo[1].animalSteppedOn = locations[currentLocation].getByteOn(animalX, animalY);
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
  animalX = (byte)l.animalInfo[0].animalRoute[0][0];
  animalY = (byte)l.animalInfo[0].animalRoute[0][1];
  l.animalInfo[0].animalSteppedOn = locations[LOCATION_CAVE].getByteOn(animalX, animalY);
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
  animalX = (byte)l.animalInfo[1].animalRoute[0][0];
  animalY = (byte)l.animalInfo[1].animalRoute[0][1];
  l.animalInfo[1].animalSteppedOn = locations[LOCATION_CAVE].getByteOn(animalX, animalY);
}
byte[]theTreeTemplate;
void setup()
{
  size(1280, 640, P3D);
  int [][]colors={{255,255,255, MAP_NOTHING}, {10,0,0,MAP_TREEPART1}, 
                                              {20,0,0,MAP_TREEPART2}, 
                                              {30,0,0,MAP_TREEPART3}, 
                                              {40,0,0,MAP_TREEPART4}, 
                                              {50,0,0,MAP_TREEPART5}, 
                                              {60,0,0,MAP_TREEPART6}, 
                                              {70,0,0,MAP_TREEPART7}, 
                                              {80,0,0,MAP_TREEPART8}, 
                                              {90,0,0,MAP_TREEPART9}, 
                                              {100,0,0,MAP_TREEPART10}, 
                                              {110,0,0,MAP_TREEPART11}, 
                                              {120,0,0,MAP_TREEPART12}, 
                                              {130,0,0,MAP_TREEPART13}};   
  theTreeTemplate = iteratePngLabyrinth("TreeTemplate4.png", colors);
  menukind = MENUKIND_NOMENU;
  theCave = createCave();
  theSavanna = createSavanna();
  theBeach = createBeach();
  theCliff = createCliff();
  theHive = createHive();
  theFire = createFire();
  theLabyrinth = createLabyrinth();
  theLabyrinth2 = createLabyrinth2();
  theTrees = createTree();
  locations[currentLocation].theMap = theSavanna; 
  locations[currentLocation].Hero_Position_Idx = 10;
  locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
  locations[LOCATION_CAVE].theMap = theCave;
  locations[LOCATION_BEACH].theMap = theBeach;
  locations[LOCATION_CLIFF].theMap = theCliff;
  locations[LOCATION_HIVE].theMap = theHive;
  locations[LOCATION_FIRE].theMap = theFire;
  locations[LOCATION_LABYRINTH].theMap = theLabyrinth;
  locations[LOCATION_LABYRINTH2].theMap = theLabyrinth2;
  locations[LOCATION_TREE].theMap = theTrees;
  TILE_WIDTH = width/MAP_WIDTH;
  TILE_HEIGHT = height/MAP_HEIGHT;
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
  tiles[i++] = loadImage("TileNest.jpg");
  tiles[i++] = loadImage("TileSnakeHead.jpg");
  tiles[i++] = loadImage("TileSnakeBody.jpg");
  tiles[i++] = loadImage("TileSnakeTail.jpg");
  tiles[i++] = loadImage("TileSnakeDead.jpg");
  tiles[i++] = loadImage("TileSavanna1.jpg");
  tiles[i++] = loadImage("TileSavanna2.jpg");
  tiles[i++] = loadImage("TileSand.jpg");
  tiles[i++] = loadImage("TileWater.jpg");
  tiles[i++] = loadImage("TileWave.jpg");
  tiles[i++] = loadImage("TileSand.jpg");
  tiles[i++] = loadImage("TileBoat.jpg");
  tiles[i++] = loadImage("TileBoatNoSail.jpg");
  tiles[i++] = loadImage("TileCliffEntry.jpg");
  tiles[i++] = loadImage("TileCliffSide.jpg");
  tiles[i++] = loadImage("TileBoulder.jpg");
  tiles[i++] = loadImage("TileHive.jpg");
  tiles[i++] = loadImage("TileFlower.jpg");
  tiles[i++] = loadImage("TileBee.jpg");
  tiles[i++] = loadImage("TileBurnable.jpg");
  tiles[i++] = loadImage("TileFire1.jpg");
  tiles[i++] = loadImage("TileFire2.jpg");
  tiles[i++] = loadImage("TileFire3.jpg");
  tiles[i++] = loadImage("TileBurnable.jpg");
  tiles[i++] = loadImage("TileBucket.jpg");
  tiles[i++] = loadImage("TileExtinguished1.jpg");
  tiles[i++] = loadImage("TileExtinguished2.jpg");
  tiles[i++] = loadImage("TileExtinguished3.jpg");
  tiles[i++] = loadImage("TileHive.jpg");
  tiles[i++] = loadImage("TileCactus.jpg");
  tiles[i++] = loadImage("TileLabyrinth.jpg");
  tiles[i++] = loadImage("TileTorch.jpg");
  tiles[i++] = loadImage("TileTree.png");
  tiles[i++] = loadImage("TreePart1.png");
  tiles[i++] = loadImage("TreePart2.png");
  tiles[i++] = loadImage("TreePart3.png");
  tiles[i++] = loadImage("TreePart4.png");
  tiles[i++] = loadImage("TreePart5.png");
  tiles[i++] = loadImage("TreePart6.png");
  tiles[i++] = loadImage("TreePart7.png");
  tiles[i++] = loadImage("TreePart8.png");
  tiles[i++] = loadImage("TreePart9.png");
  tiles[i++] = loadImage("TreePart10.png");
  tiles[i++] = loadImage("TreePart11.png");
  tiles[i++] = loadImage("TreePart12.png");
  tiles[i++] = loadImage("TreePart13.png");
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
Menu menu;
void openInventoryMenu()
{
  menu = new Menu();
  menu.items = new Menu_Item[] {new Menu_Item("Inventory", null ,-1 ,null),
                                new Menu_Item("Stones = " + stonecount, null ,-1 ,null),
                                new Menu_Item("Snakeskins = " +snakecount, null ,-1 ,null),
                                new Menu_Item("Wood =" + woodcount, null ,-1 ,null),
                                new Menu_Item("Needles = "+ needlecount, null ,-1 ,null),
                                new Menu_Item(null, "O.K.", Menu.OK, null),
                                new Menu_Item(null, "Items", Menu.ITEMS, "i"),
                                new Menu_Item(null, "Casting", Menu.CASTING, "c")};
}
void openItemsMenu()
{
  menu = new Menu();
  Menu_Item[]localitems;
  int itemidx = 0;
  localitems = new Menu_Item[100];
  if(torchcount >= 1)
  {
    for(int i = 0; i < torchcount; i++)
    {
      localitems[itemidx++] = new Menu_Item(null, "A Torch. Click to drop.", Menu.TORCH, null);
    }
  }
  if(bucketcount == 1)
  {
    localitems[itemidx++] = new Menu_Item("A Bucket", null, -1, null);
  }
  if(bucketcount == 2)
  {
    localitems[itemidx++] = new Menu_Item("A Bucket with Water in it", null, -1, null);
  }
  if(flowercount == 1)
  {
    localitems[itemidx++] = new Menu_Item(null, "A Flower with a strong scent. Click to drop.", Menu.FLOWER, null);
  }
  menu.defaultButtonIdx = itemidx;
  localitems[itemidx++] = new Menu_Item(null, "O.K.", Menu.OK, null);
  menu.items = new Menu_Item[itemidx];
  for(int i = 0; i < itemidx; i++)
  {
    menu.items[i] = localitems[i];
  }
}
void openCastingMenu()
{
  menu = new Menu();
  Menu_Item[]localitems;
  int itemidx = 0;
  localitems = new Menu_Item[100];
  if(snakecount >= 5 && needlecount >= 5)
  {
    localitems[itemidx++] = new Menu_Item(null, "Cast Bucket? (-5 Needles, -5 Snakeskins)", Menu.CASTBUCKET , "b");
  }
  if(woodcount >= 5 && stonecount >= 5)
  {
    localitems[itemidx++] = new Menu_Item(null, "Cast Torch (-5 Wood, -5 Stones)", Menu.CASTTORCH, null);
  }
  menu.defaultButtonIdx = itemidx;
  localitems[itemidx++] = new Menu_Item(null, "O.K.", Menu.OK, null);
  menu.items = new Menu_Item[itemidx];
  for(int i = 0; i < itemidx; i++)
  {
    menu.items[i] = localitems[i];
  }
}
long startTime;
long endTime;
void mousePressed()
{
  if(menu != null)
  {
    int action = menu.onMouseDownButtonHit();
    handleMenuAction(action);
    return;
  }
  startTime = System.nanoTime();
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
  if(menukind == MENUKIND_GATHERINGWOOD 
  || menukind == MENUKIND_GATHERINGSTONES 
  || menukind == MENUKIND_BUILDINGBRIDGE 
  || menukind == MENUKIND_GATHERINGSNAKE 
  || menukind == MENUKIND_BUILDINGBOAT 
  || menukind == MENUKIND_ENTERINGBOAT 
  || menukind == MENUKIND_LEAVINGBOAT
  || menukind == MENUKIND_GATHERINGFLOWER
  || menukind == MENUKIND_PLACINGFLOWER
  || menukind == MENUKIND_EXTINGUISHINGFIRE
  || menukind == MENUKIND_FILLINGBUCKET
  || menukind == MENUKIND_PICKINGUPBUCKET
  || menukind == MENUKIND_GATHERINGNEEDLES)
  {
    if(mouseX >= 60 && mouseX <= 280 && mouseY >= 100 && mouseY <= 240)
    {
      if(menukind == MENUKIND_GATHERINGWOOD)
      {
        woodcount++;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].theMap[gatheringIdx] = MAP_BLACK;
      }
      if(menukind == MENUKIND_GATHERINGFLOWER)
      {
        flowercount++;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].theMap[gatheringIdx] = MAP_SAND;
      }
      if(menukind == MENUKIND_PLACINGFLOWER)
      {
        flowercount--;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].Hero_Previous = MAP_FLOWER;
        FlowerY = (byte)(locations[currentLocation].Hero_Position_Idx/MAP_WIDTH);
        FlowerX = (byte)(locations[currentLocation].Hero_Position_Idx-(FlowerY*MAP_WIDTH));
        println(FlowerX + " = X; " + FlowerY + " = Y;");
      }
      if(menukind == MENUKIND_GATHERINGSTONES)
      {
        stonecount++;
        menukind = MENUKIND_NOMENU;
        locations[currentLocation].theMap[gatheringIdx] = MAP_BLACK;
        return;
      }
      if(menukind == MENUKIND_GATHERINGSNAKE)
      {
        snakecount++;
        menukind = MENUKIND_NOMENU;
        for(int i = 0; i < theSnake.length; i++)
        {
          if(theSnake[i][SNAKEIDX] == gatheringIdx)
          {
            theSnake[i][SNAKESPRITE] = theSnake[i][SNAKESTANDINGON];
            theSnake[i][SNAKEALREADYGATHERED] = 1;
            break;
          }
        }
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
      if(menukind == MENUKIND_BUILDINGBOAT)
      {
        if(snakecount >= 5 && woodcount >= 5)
        {
          snakecount = snakecount - 5;
          woodcount = woodcount - 5;
          menukind = MENUKIND_NOMENU;
          theBoat[BOATIDX] = gatheringIdx;
          theBoat[BOATSPRITE] = MAP_BOATNOSAIL;
          return;
        }
        else
        {
          menukind = MENUKIND_NOTENOUGHMATERIALS;
          menuopenreason = "Not enough Snakeskins/Wood! \nYou need 5 of both, but you have \n"+snakecount+" Snakeskins and "+woodcount+" Wood.";
          return;
        }
      }
      if(menukind == MENUKIND_ENTERINGBOAT)
      {
        theBoat[INBOAT] = 1;
        locations[currentLocation].theMap[gatheringIdx] = MAP_SAND;
        locations[currentLocation].Hero_Position_Idx = theBoat[BOATIDX];
        return;
      }
      if(menukind == MENUKIND_LEAVINGBOAT)
      {
        theBoat[INBOAT] = 0;
        locations[currentLocation].Hero_Position_Idx = gatheringIdx;
        locations[currentLocation].Hero_Previous = locations[currentLocation].theMap[gatheringIdx];
        locations[currentLocation].theMap[gatheringIdx] = MAP_HERO;
        return;
      }
      if(menukind == MENUKIND_FILLINGBUCKET)
      {
        menukind = MENUKIND_NOMENU;
        bucketcount++;
        return;
      }
      if(menukind == MENUKIND_EXTINGUISHINGFIRE)
      {
        locations[currentLocation].theMap[gatheringIdx] = MAP_EXTINGUISHED3;
        bucketcount--;
        menukind = MENUKIND_NOMENU;
        return;
      }
      if(menukind == MENUKIND_GATHERINGNEEDLES)
      {
        needlecount++;
        locations[currentLocation].theMap[gatheringIdx] = MAP_SAND;
        menukind = MENUKIND_NOMENU;
        return;
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
void mouseReleased()
{
  endTime = System.nanoTime();
  long timeElapsed = (endTime - startTime)/1000000;
  int msl = 300;
  if(supersecretcheatcode2 == 14)
  {
    if(timeElapsed <= msl)
    {
      openCheatMenu();
      supersecretcheatcode2 = 0;
      println(timeElapsed + "; " + supersecretcheatcode2);
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 13)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 14;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 12)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 13; 
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 11)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 12; 
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 10)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 11;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 9)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 10; 
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 8)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 9;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 7)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 8;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 6)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 7;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 5)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 6; 
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 4)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 5;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;  
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 3)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 4;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 2)
  {
    if(timeElapsed > msl)
    {
      supersecretcheatcode2 = 3; 
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(supersecretcheatcode2 == 1)
  {
    if(timeElapsed <= msl)
    {
      supersecretcheatcode2 = 2;
      println(timeElapsed + "; " + supersecretcheatcode2);
      return;
    }
    else
    {
      supersecretcheatcode2 = 0;
    }
  }
  
  if(timeElapsed <= msl && supersecretcheatcode == 0)
  {
    supersecretcheatcode2 = 1;
    println(timeElapsed + "; " + supersecretcheatcode2);
    return;
  }
}
void openCheatMenu()
{
  menu = new Menu();
  menu.items = new Menu_Item[] {new Menu_Item(null, "Give all Resources", Menu.GIVERESOURCES, null),
                                new Menu_Item(null, "Teleport to Savanna", Menu.SAVANNA, null),
                                new Menu_Item(null, "Teleport to Cave", Menu.CAVE, null),
                                new Menu_Item(null, "Teleport to Beach", Menu.BEACH, null),
                                new Menu_Item(null, "Teleport to Cliff", Menu.CLIFF, null),
                                new Menu_Item(null, "Teleport to Hive", Menu.HIVE, null),
                                new Menu_Item(null, "Teleport to Fire", Menu.FIRE, null),
                                new Menu_Item(null, "Teleport to the first Labyrinth", Menu.LABYRINTH, null),
                                new Menu_Item(null, "Teleport to the second Labyrinth", Menu.LABYRINTH2, null),
                                new Menu_Item(null, "Teleport to the Trees", Menu.TREE, null),
                                new Menu_Item(null, "O.K.", Menu.OK, null)};
}
void handleMenuAction(int action)
{
  if(action != Menu.NOTHING)
  {
    if(action == Menu.OK)
    {
      menu = null; //<>//
    }
    if(action == Menu.ITEMS)
    {
      openItemsMenu();
    }
    if(action == Menu.CASTING)
    {
      openCastingMenu();
    }
    if(action == Menu.CASTBUCKET)
    {
      if(snakecount >= 5 && needlecount >= 5)
      {
        if(bucketcount == 0)
        {
          snakecount = snakecount - 5;
          needlecount = needlecount - 5;        
          bucketcount++;
          menu = null;
        }
      }
    }
    if(action == Menu.FLOWER)
    {
      flowercount--;
      menukind = MENUKIND_NOMENU;
      locations[currentLocation].Hero_Previous = MAP_FLOWER;
      FlowerY = (byte)(locations[currentLocation].Hero_Position_Idx/MAP_WIDTH);
      FlowerX = (byte)(locations[currentLocation].Hero_Position_Idx-(FlowerY*MAP_WIDTH));
      println(FlowerX + " = X; " + FlowerY + " = Y;");
      menu = null;
    }
    if(action == Menu.CASTTORCH)
    {
      if(woodcount >= 5 && stonecount >= 5)
      {
        stonecount = stonecount - 5;
        woodcount = woodcount - 5;        
        torchcount++;
        menu = null;
      }
    }
    if(action == Menu.TORCH)
    {
      if(currentLocation == LOCATION_LABYRINTH || currentLocation == LOCATION_LABYRINTH2)
      {
        torchcount--;
        theTorches[torches++] = locations[currentLocation].Hero_Position_Idx;
        locations[currentLocation].Hero_Previous = MAP_TORCH;
        menu = null;
      }
    }
    if(action == Menu.GIVERESOURCES)
    {
      woodcount = woodcount + 5;
      stonecount = stonecount + 5;
      snakecount = snakecount + 5;
      needlecount = needlecount +5;
    }
    if(action == Menu.SAVANNA)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_SAVANNA;
      locations[currentLocation].Hero_Position_Idx = 4;
      locations[currentLocation].Hero_Previous = MAP_SAVANNA1;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.CAVE)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_CAVE;
      locations[currentLocation].Hero_Position_Idx = 631;
      locations[currentLocation].Hero_Previous = MAP_BLACK;   
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.BEACH)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_BEACH;      
      locations[currentLocation].Hero_Position_Idx = 761;
      locations[currentLocation].Hero_Previous = MAP_SAND;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.CLIFF)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_CLIFF;
      locations[currentLocation].Hero_Position_Idx = 761;
      locations[currentLocation].Hero_Previous = MAP_SAND;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.HIVE)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_HIVE;
      locations[currentLocation].Hero_Position_Idx = 631;
      locations[currentLocation].Hero_Previous = MAP_BLACK;   
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.FIRE)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_FIRE;
      locations[currentLocation].Hero_Position_Idx = 798;
      locations[currentLocation].Hero_Previous = MAP_BLACK;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
      locations[currentLocation].calculateFire();
    }
    if(action == Menu.LABYRINTH)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_LABYRINTH;
      locations[currentLocation].Hero_Position_Idx = 798;
      locations[currentLocation].Hero_Previous = MAP_SAND;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO; 
    }
    if(action == Menu.LABYRINTH2)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_LABYRINTH2;
      locations[currentLocation].Hero_Position_Idx = 798;
      locations[currentLocation].Hero_Previous = MAP_SAND;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
    }
    if(action == Menu.TREE)
    {
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_TELEPORTMARK;
      currentLocation = LOCATION_TREE;
      locations[currentLocation].Hero_Position_Idx = 0;
      locations[currentLocation].Hero_Previous = MAP_SAVANNA2;
      locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO; 
      locations[currentLocation].drawTree();
    }
  }
}
void keyPressed()
{
  if(menu != null)
  {
    int action = menu.onKeyPressisShortcutchoosen();
    handleMenuAction(action);
    return;
  }
  menukind = MENUKIND_NOMENU;
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
  if(supersecretcheatcode == 4)
  {
    if(key == 100 || key == 68)
    {
      supersecretcheatcode = 5;
    }
    else
    {
      supersecretcheatcode = 0;
    }
  }
  if(supersecretcheatcode == 3)
  {
    if(key == 113 || key == 81)
    {
      supersecretcheatcode = 4;
    }
    else
    {
      supersecretcheatcode = 0;
    }
  }
  if(supersecretcheatcode == 2)
  {
    if(key == 100 || key == 68)
    {
      supersecretcheatcode = 3; 
    }
    else
    {
      supersecretcheatcode = 0;
    }
  }
  if(supersecretcheatcode == 1)
  {
    if(key == 100 || key == 68)
    {
      supersecretcheatcode = 2;  
    }
    else
    {
      supersecretcheatcode = 0;
    }
  }
  if((key == 105 || key == 73) && supersecretcheatcode == 0)
  {
    supersecretcheatcode = 1;
  }
  if(supersecretcheatcode == 5)
  {    
    supersecretcheatcode = 0;
    openCheatMenu();
  }
  if(key == 69 || key == 101) //Upper- & Lowercase E
  {
    if(flowercount != 0)
    {
      menukind = MENUKIND_PLACINGFLOWER;
      menuopenreason = "Do you want to leave the Flower lying on the floor?";
    }
  }
  if(key == 119 || key == 87)//Upper- & Lowercase W
  {
    if(theTree[0][1]-1 != -1)
    {
      if(currentLocation == LOCATION_TREE)
      {
        theTree[0][3]=theTree[0][1];
        theTree[0][1]--;
        if(onTree)
        {
          locations[currentLocation].Hero_Position_Idx = locations[currentLocation].Hero_Position_Idx - MAP_WIDTH;
        }
        locations[currentLocation].drawTree();
      }
    }
  }
  if(key == 115 || key == 83)//Upper- & Lowercase S
  {
    if(theTree[0][1]+1 != MAP_HEIGHT-5)
    {
      if(currentLocation == LOCATION_TREE)
      {
        theTree[0][3]=theTree[0][1];
        theTree[0][1]++;
        if(onTree)
        {
          locations[currentLocation].Hero_Position_Idx = locations[currentLocation].Hero_Position_Idx + MAP_WIDTH;
        }
        locations[currentLocation].drawTree();
      }
    }
  }
  if(key == 100 || key == 68)//Upper- & Lowercase D
  {
    if(theTree[0][0]+1 != MAP_WIDTH-5)
    {
      if(currentLocation == LOCATION_TREE)
      {
        theTree[0][2]=theTree[0][0];
        theTree[0][0]++;
        if(onTree)
        {
          locations[currentLocation].Hero_Position_Idx++;
        }
        locations[currentLocation].drawTree();
      }
    }
  }
  if(key == 97 || key == 65)//Upper- & Lowercase A
  {
    if(theTree[0][0]-1 != -1)
    {  
      if(currentLocation == LOCATION_TREE)
      {
        theTree[0][2]=theTree[0][0];
        theTree[0][0]--;
        if(onTree)
        {
          locations[currentLocation].Hero_Position_Idx--;
        }
        locations[currentLocation].drawTree();
      }
    }
  }
}
void HeroAutoRepeat()
{
  if(keyPressed && key == CODED)
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
}
void draw()
{
  if((frameCount%3) == 0)
  {
    HeroAutoRepeat();
  }
  if(menu != null)
  {
    menu.onDrawMenu();
    return;
  }
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
  if(menukind == MENUKIND_INVENTORY)
  {
    
  }
  else
  {
    text(menuopenreason, 60, 70);
  }
  if(menukind == MENUKIND_WANTTOEXIT)
  {
    rect(60, 100, 220, 140);
    rect(290, 100, 220, 140);
    fill(0, 0, 0);
    text("Y", 170, 170);
    text("N", 400, 170);
  }
  if(menukind == MENUKIND_COLLISION)
  {
    rect(60, 100, 220, 140);
    fill(0,0,0);
    text("O.K.", 170, 170);
  }
  if(menukind == MENUKIND_INVENTORY)
  {
    fill(255,255,255);
    rect(290, 100, 220, 140);
    rect(60, 100, 220, 140);
    fill(0,0,0);
    text("Materials", 170, 170);
    text("Items", 400, 170);
  }
  if(menukind == MENUKIND_BUILDINGBRIDGE || menukind == MENUKIND_GATHERINGSTONES || menukind == MENUKIND_GATHERINGWOOD || menukind == MENUKIND_GATHERINGSNAKE || menukind == MENUKIND_BUILDINGBOAT || menukind == MENUKIND_ENTERINGBOAT || menukind == MENUKIND_LEAVINGBOAT || menukind == MENUKIND_GATHERINGFLOWER || menukind == MENUKIND_PLACINGFLOWER || menukind == MENUKIND_FILLINGBUCKET || menukind == MENUKIND_EXTINGUISHINGFIRE || menukind == MENUKIND_PICKINGUPBUCKET || menukind == MENUKIND_GATHERINGNEEDLES)
  {
    rect(60, 100, 220, 140);
    rect(290, 100, 220, 140);
    fill(0,0,0);
    if(menukind == MENUKIND_BUILDINGBRIDGE || menukind == MENUKIND_BUILDINGBOAT)
    {
      text("Build", 170, 170);
    }
    if(menukind == MENUKIND_GATHERINGSTONES || menukind == MENUKIND_GATHERINGWOOD || menukind == MENUKIND_GATHERINGSNAKE || menukind == MENUKIND_GATHERINGFLOWER)
    {
      text("Gather", 170, 170);
    }
    if(menukind == MENUKIND_ENTERINGBOAT)
    {
      text("Enter", 170, 170);
    }
    if(menukind == MENUKIND_FILLINGBUCKET)
    {
      text("Fill", 170, 170);
    }
    if(menukind == MENUKIND_EXTINGUISHINGFIRE)
    {
      text("Extinguish", 170, 170);
    }
    if(menukind == MENUKIND_PICKINGUPBUCKET)
    {
      text("Pick Up", 170, 170);
    }
    if(menukind == MENUKIND_LEAVINGBOAT|| menukind == MENUKIND_PLACINGFLOWER)
    {
      text("Leave", 170, 170);
    }
    if(menukind == MENUKIND_GATHERINGNEEDLES)
    {
      text("Remove", 170, 170);
    }
    if(menukind != MENUKIND_LEAVINGBOAT && menukind != MENUKIND_PLACINGFLOWER)
    {
      text("Leave", 400, 170);
    }
    else
    {
      if(menukind == MENUKIND_LEAVINGBOAT)
      {
        text("Stay", 400, 170);
      }
      if(menukind == MENUKIND_PLACINGFLOWER)
      {
        text("Keep", 400, 170);
      }
    }
  }
}
