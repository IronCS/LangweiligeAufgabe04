class Location
{
  RailAnimal []animalInfo;
  byte[] theMap;
  int Hero_Position_Idx;
  byte Hero_Previous = MAP_SAVANNA1;
  int snakeIdx = 7;
  int snakeTailPreviousIdx;
  byte beesteppedon = MAP_BLACK;
  byte getByteOn(byte X, byte Y)
  {
    byte ByteOn = theMap[Y * MAP_WIDTH + X];
    return ByteOn;
  };
  void heroMoveChecker(int newHeroIdx, boolean HeroWrongY)
  {
    println(newHeroIdx + "; " + HeroWrongY + "; " + Hero_Position_Idx);
    if(newHeroIdx == Hero_Position_Idx)
    {
      return;
    }
    if(Hero_Position_Idx != newHeroIdx && newHeroIdx >= 0 && newHeroIdx < MAP_WIDTH * MAP_HEIGHT && !HeroWrongY)
    {
      if(theMap[newHeroIdx] == MAP_BLACK
      || theMap[newHeroIdx] == MAP_BRIDGE 
      || theMap[newHeroIdx] == MAP_SAVANNA1 
      || theMap[newHeroIdx] == MAP_SAVANNA2 
      || theMap[newHeroIdx] == MAP_SAND 
      || theBoat[INBOAT] == 1)
      {
        if(theBoat[INBOAT] == 0)
        {
          theMap[Hero_Position_Idx] = Hero_Previous;
          Hero_Previous = theMap[newHeroIdx];
          theMap[newHeroIdx] = MAP_HERO;
          Hero_Position_Idx = newHeroIdx;
        }
        else
        {
          if(((newHeroIdx - Hero_Position_Idx) == 1 || (newHeroIdx - Hero_Position_Idx) == -1) && (theMap[Hero_Position_Idx + MAP_WIDTH] == MAP_SAND || theMap[Hero_Position_Idx - MAP_WIDTH] == MAP_SAND))
          {
            menukind = MENUKIND_LEAVINGBOAT;
            menuopenreason = "Do you want to leave the Boat?";
            if(theMap[Hero_Position_Idx + MAP_WIDTH] == MAP_SAND)
            {
              gatheringIdx = Hero_Position_Idx + MAP_WIDTH;
            }
            else
            {
              gatheringIdx = Hero_Position_Idx - MAP_WIDTH;
            }
          }
          if((newHeroIdx - Hero_Position_Idx) == MAP_WIDTH)
          {
            theBoat[BOATSPRITE] = MAP_BOATNOSAIL;
          }
          if((newHeroIdx - Hero_Position_Idx) == -MAP_WIDTH)
          {
            theBoat[BOATSPRITE] = MAP_BOAT;
          }
        }
      }
      else
      {
        menuopenreason = "";
        menukind = MENUKIND_COLLISION;
        if(newHeroIdx < 0 || newHeroIdx >= MAP_WIDTH*MAP_HEIGHT || HeroWrongY && menuopenreason.equals(""))
        {
          menuopenreason = "End of the Map.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_GREEN)
        {
          menuopenreason = "There are spikes in the bushes. You dont wanna go in there.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_WOOD)
        {
          menuopenreason = "This Tree is too high to climb. \n Do you want to fell it?";
          menukind = MENUKIND_GATHERINGWOOD;
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BRICK)
        {
          menuopenreason = "This Wall is too high to climb. \n Do you want to gather Stones from it?";
          menukind = MENUKIND_GATHERINGSTONES;
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_YELLOW)
        {
          menuopenreason = "The Lion is always watching.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_YELLOWSLEEPING)
        {
          menuopenreason = "You are in luck, he's sleeping. Now get away!";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SPIDER)
        {
          menuopenreason = "The Spider is always watching.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SPIDERSLEEPING)
        {
          menuopenreason = "You are in luck, it's sleeping. Now get away!";
        }   
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_VOID)
        {
          menuopenreason = "That looks pretty deep. \n You throw a rock down there, but it never returns a sound. \nDo you want to build a bridge?";
          menukind = MENUKIND_BUILDINGBRIDGE;
          gatheringIdx = newHeroIdx;
        }   
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SNAKEDEAD)
        {
          menuopenreason = "A giant Snakeskin. \nDo you want to gather it?";
          menukind = MENUKIND_GATHERINGSNAKE;
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_CAVE)
        {
          if(currentLocation == LOCATION_SAVANNA)
          {
            menuopenreason = "You are entering the Cave.";
            currentLocation = LOCATION_CAVE;
            theMap[Hero_Position_Idx] = MAP_SAVANNA1;
            locations[currentLocation].Hero_Position_Idx = 631;
            locations[currentLocation].Hero_Previous = MAP_BLACK;   
            locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
          }
          if(currentLocation == LOCATION_BEACH)
          {
            menuopenreason = "You are entering the Cave.";
            currentLocation = LOCATION_CAVE;
            theMap[Hero_Position_Idx] = MAP_SAND;
            locations[currentLocation].Hero_Position_Idx = 38;
            locations[currentLocation].Hero_Previous = MAP_SAND;   
            locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
          }
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_LIGHT)
        {          
          menuopenreason = "You are leaving the Cave.";
          currentLocation = LOCATION_SAVANNA;
          theMap[Hero_Position_Idx] = MAP_BLACK;
          locations[currentLocation].Hero_Position_Idx = 4;
          locations[currentLocation].Hero_Previous = MAP_SAVANNA1;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SANDTRANSFER)
        {
          if(currentLocation == LOCATION_CAVE)
          {
            menuopenreason = "You are leaving the Cave.";
            currentLocation = LOCATION_BEACH;
            theMap[Hero_Position_Idx] = MAP_SAND;
            locations[currentLocation].Hero_Position_Idx = 761;
            locations[currentLocation].Hero_Previous = MAP_SAND;
            locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO; //<>// //<>// //<>// //<>// //<>//
          }
          if(currentLocation == LOCATION_CLIFF)
          {
            menuopenreason = "You are leaving the Cliff.";
            currentLocation = LOCATION_BEACH;
            theMap[Hero_Position_Idx] = MAP_SAND;
            locations[currentLocation].Hero_Position_Idx = 38;
            locations[currentLocation].Hero_Previous = MAP_SAND;
            locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO; //<>// //<>// //<>// //<>//
          }
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_WATER)
        {
          menukind = MENUKIND_BUILDINGBOAT;
          menuopenreason = "The Water is deep and Wavy. \nDo you want to build a boat?";
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BOAT || menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BOATNOSAIL)
        {
          menukind = MENUKIND_ENTERINGBOAT;
          menuopenreason = "Do you want to enter the Boat and try to get to the other side of the Sea?";
          gatheringIdx = Hero_Position_Idx;
          theBoat[BOATIDX] = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_CLIFFENTRY)
        {
          menuopenreason = "You are entering the Cliff.";
          currentLocation = LOCATION_CLIFF;
          theMap[Hero_Position_Idx] = MAP_SAND;
          locations[currentLocation].Hero_Position_Idx = 761;
          locations[currentLocation].Hero_Previous = MAP_SAND;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_CLIFFSIDE)
        {
          menuopenreason = "This Cliffside is too high to climb, and made out of Rock too hard to gather.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BOULDER)
        {
          menukind = MENUKIND_NOMENU;
          for(int i = 0; i < theBoulder.length; i++)
          {
            if(theBoulder[i][BOULDERIDX] == newHeroIdx)
            {
              theBoulder[i][BOULDERIDX] = theBoulder[i][BOULDERIDX] + (newHeroIdx - Hero_Position_Idx);
              if(theBoulder[i][BOULDERIDX] < 800 && (theMap[theBoulder[i][BOULDERIDX]] == MAP_SAND || theMap[theBoulder[i][BOULDERIDX]] == MAP_SAVANNA1))
              {
                theMap[Hero_Position_Idx] = Hero_Previous;
                Hero_Previous = (byte)theBoulder[i][BOULDERSTANDINGON];
                theMap[newHeroIdx] = MAP_HERO;                               
                Hero_Position_Idx = newHeroIdx;
                theBoulder[i][BOULDERSTANDINGON] = theMap[theBoulder[i][BOULDERIDX]];
                theMap[theBoulder[i][BOULDERIDX]] = MAP_BOULDER;
              }
              else
              {
                theBoulder[i][BOULDERIDX] = theBoulder[i][BOULDERIDX] - (newHeroIdx - Hero_Position_Idx);
              }
              if(theMap[623] == MAP_BOULDER && theMap[624] == MAP_BOULDER && theMap[663] == MAP_BOULDER && theMap[703] == MAP_BOULDER && theMap[704] == MAP_BOULDER)
              {
                theMap[623] = MAP_SAND;
                theMap[624] = MAP_SAND;
                theMap[663] = MAP_SAND;
                theMap[703] = MAP_SAND;
                theMap[704] = MAP_SAND;
                theMap[622] = MAP_SAND;
                theMap[702] = MAP_SAND;
                theMap[662] = MAP_SAND;
              }
              break;
            }
          }
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_HIVETRANSFER)
        {
          menuopenreason = "You are entering the Hive.";
          currentLocation = LOCATION_HIVE;
          theMap[Hero_Position_Idx] = MAP_SAND;
          locations[currentLocation].Hero_Position_Idx = 631;
          locations[currentLocation].Hero_Previous = MAP_BLACK;   
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
        if(menuopenreason.equals(""))
        {
          menukind = MENUKIND_NOMENU;
        }
      }
    }
  }
  void snakemovement(int snakeNewIdx)
  {
    if(snakeIdx != snakeNewIdx)
    {
      snakeIdx = snakeNewIdx;
      boolean alreadyreplaced = false;
      for(int currentsnakepartIdx = 0; currentsnakepartIdx < theSnake.length; currentsnakepartIdx++)
      {  
        if(theSnake[currentsnakepartIdx][SNAKESPRITE] != MAP_SNAKEDEAD && theSnake[currentsnakepartIdx][SNAKEALREADYGATHERED] == 0)
        {
           if(!alreadyreplaced)
           {
             theMap[theSnake[currentsnakepartIdx][SNAKEIDX]] = (byte)theSnake[currentsnakepartIdx][SNAKESTANDINGON];
             alreadyreplaced = true;
           }
           if(currentsnakepartIdx < theSnake.length -1)
           {
             theSnake[currentsnakepartIdx][SNAKESTANDINGON] = theSnake[currentsnakepartIdx+1][SNAKESTANDINGON];
             theSnake[currentsnakepartIdx][SNAKEIDX] = theSnake[currentsnakepartIdx+1][SNAKEIDX];
           }
           else
           {
             if(theMap[snakeIdx] != MAP_SNAKETAIL && theMap[snakeIdx] != MAP_SNAKEBODY && theMap[snakeIdx] != MAP_SNAKEHEAD)
             {
               theSnake[currentsnakepartIdx][SNAKESTANDINGON] = theMap[snakeIdx];
             }
             theSnake[currentsnakepartIdx][SNAKEIDX] = snakeIdx;
           }
        }
        if(theMap[theSnake[currentsnakepartIdx][SNAKEIDX]] != MAP_HERO)
        {
          theMap[theSnake[currentsnakepartIdx][SNAKEIDX]] = (byte)theSnake[currentsnakepartIdx][SNAKESPRITE];
        }
      }
   }
  }
  void drawhorizontalwave(int Y)
  {
    drawhorizontalwave(Y, null);
  }
  void drawhorizontalwave(int Y, String where)
  {
    println("+"+where+"; Y = "+Y);
    for(int i = 0; i < MAP_WIDTH; i++)
    {
      if(waveXYIsSuitableForHorizontalDrawErase(i, Y))
      {
        theMap[Y * MAP_WIDTH + i] = MAP_WAVE;
      }      
    }
  }
  void erasehorizontalwave(int Y)
  {
    erasehorizontalwave(Y, null);
  }
  void erasehorizontalwave(int Y, String where)
  {
    println("-"+where+"; Y = "+Y);
    for(int i = 0; i < MAP_WIDTH; i++)
    {
      if(waveXYIsSuitableForHorizontalDrawErase(i, Y))
      {
        theMap[Y * MAP_WIDTH + i] = MAP_WATER;
      }
    }
  }
  void drawverticalwave(int X)
  {
    drawverticalwave(X, null);
  }
  boolean waveXYIsSuitableForHorizontalDrawErase(int X, int Y)
  {
    return waveXYIsSuitableForVerticalDrawErase(X, Y);
  }
  boolean waveXYIsSuitableForVerticalDrawErase(int X, int Y)
  {
    return (Y < MAP_HEIGHT - 2 && X >= 0 && theMap[Y * MAP_WIDTH + X] != MAP_BOAT && theMap[Y * MAP_WIDTH + X] != MAP_BOATNOSAIL && theMap[Y * MAP_WIDTH + X] != MAP_SAND && theMap[Y * MAP_WIDTH + X] != MAP_HERO);
  }
  void drawverticalwave(int X, String where)
  {
    println("+v."+where+"; X="+X);
    for(int i = 2; i < MAP_HEIGHT - 2; i++)
    {        
      if(waveXYIsSuitableForVerticalDrawErase(X, i))
      {
        theMap[i * MAP_WIDTH + X] = MAP_WAVE;
      }
    }
  }
  void eraseverticalwave(int X)
  {
    eraseverticalwave(X, null);
  }
  void eraseverticalwave(int X, String where)
  {
    println("-"+where+"; X = "+X);
    for(int i = 2; i < MAP_HEIGHT - 2; i++)
    {  
      if(waveXYIsSuitableForVerticalDrawErase(X, i))
      {         
        theMap[i * MAP_WIDTH + X] = MAP_WATER;
      }
    }
  }
  boolean waveIsInitialized(int waveIdx)
  {
    return (theWave[waveIdx][WAVEX] != -2)||(theWave[waveIdx][WAVEY] != -2);
  }
  int waveGetXYI()
  {
	  int waveXYI = -1;
	  if(  theWave[0][WAVEDIRECTION] == DIR_DN
       ||theWave[0][WAVEDIRECTION] == DIR_UP)
	  {
		  waveXYI = WAVEY;
	  }
	  if (  theWave[0][WAVEDIRECTION] == DIR_LT
        ||theWave[0][WAVEDIRECTION] == DIR_RT)
	  {
		  waveXYI = WAVEX;
	  }
    return waveXYI;
  }
  // bottom to top (0): posNo = 0 for lowest from bottom, 1 for next from bottom
  // top to bottom (2): posNo = 0 for top from above, 1 = for next from above
  // right to left (3): posNo = 0 for rightmost start pos, 1 = for next after rightmost
  // left to right (1): posNo = 0 for leftmost start pos, 1 = for next after leftmost
  void waveSetStartPosition(int waveIdx, int posNo)
  {	  
    int waveXYI = waveGetXYI();
    if(theWave[0][WAVEDIRECTION] == DIR_UP)
    {
      theWave[waveIdx][waveXYI] = (posNo == 0)? MAP_HEIGHT - 3 : MAP_HEIGHT - 5; 
    }
    if(theWave[0][WAVEDIRECTION] == DIR_DN)
    {
      theWave[waveIdx][waveXYI] = (posNo == 0)? 2 : 4; 
    }
    if(theWave[0][WAVEDIRECTION] == DIR_LT)
    {
      theWave[waveIdx][waveXYI] = (posNo == 0)? MAP_WIDTH - 1 : MAP_WIDTH - 3;
    }
    if(theWave[0][WAVEDIRECTION] == DIR_RT)
    {
      theWave[waveIdx][waveXYI] = (posNo == 0)? 0 : 2;
    }
  }
  int waveGetDir()
  {
	  return theWave[0][WAVEDIRECTION];
  }
  void waveSetDir(int d)
  {
	  theWave[0][WAVEDIRECTION] = d;
  }
  void waveDraw(int waveIdx)
  {
    int d = waveGetDir();
	  if (  d == DIR_DN
        ||d == DIR_UP)
	  {
		  drawhorizontalwave(theWave[waveIdx][WAVEY]);
	  }
	  if (  d == DIR_LT
        ||d == DIR_RT)
	  {
		  drawverticalwave(theWave[waveIdx][WAVEX], "w#"+waveIdx);
	  }
  }
  void waveErase(int waveIdx, String where)
  {
    int d = waveGetDir();
	  if (  d == DIR_DN
        ||d == DIR_UP)
	  {
		  erasehorizontalwave(theWave[waveIdx][WAVEY], "-h"+where+",w#"+waveIdx);
	  }
	  if (  d == DIR_LT
        ||d == DIR_RT)
	  {
		  eraseverticalwave(theWave[waveIdx][WAVEX], "-v"+where+",w#"+waveIdx);
	  }
  }
  void waveEraseAtPrev(int waveIdx)
  {
	  if (waveGetDir() == DIR_DN)
	  {
		  erasehorizontalwave(theWave[waveIdx][WAVEY] - 1, "-h(prv),w#"+waveIdx);
	  }
	  if (waveGetDir() == DIR_UP)
	  {
		  erasehorizontalwave(theWave[waveIdx][WAVEY] + 1, "-h(prv),w#"+waveIdx);
	  }
	  if (waveGetDir() == DIR_LT)
	  {
		  eraseverticalwave(theWave[waveIdx][WAVEX] + 1, "-v(prv),w#"+waveIdx);
	  }
	  if (waveGetDir() == DIR_RT)
	  {
		  eraseverticalwave(theWave[waveIdx][WAVEX] - 1, "-v(prv),w#"+waveIdx);
	  }
  } //<>//
  boolean waveIsOnAfterLastLocation(int waveIdx)
  {
    int d = waveGetDir();
	  if (d == DIR_UP)
	  {
		  return (theWave[waveIdx][WAVEY] == 1);
	  }
	  if (d == DIR_DN)
	  {
		  return (theWave[waveIdx][WAVEY] == (MAP_HEIGHT - 2));
	  }
	  if (d == DIR_LT)
	  {
		  return (theWave[waveIdx][WAVEX] == -1);
	  }
	  if (d == DIR_RT)
	  {
		  return (theWave[waveIdx][WAVEX] == MAP_WIDTH);
	  }
    throw new java.lang.UnsupportedOperationException("not yet implemented for "+d);
  }
  
  void waveMoveForward(int waveIdx)
  {
	  int increment = 1;
	  waveMoveForward(waveIdx, increment);
  }
  
  void waveMoveForward(int waveIdx, int increment)
  {
	  if (waveGetDir() == DIR_UP)
	  {
		  theWave[waveIdx][WAVEY] -= increment;
	  }
	  if (waveGetDir() == DIR_DN)
	  {
		  theWave[waveIdx][WAVEY] += increment;
	  }
	  if (waveGetDir() == DIR_LT)
	  {
		  theWave[waveIdx][WAVEX] -= increment;
	  }
	  if (waveGetDir() == DIR_RT)
	  {
		  theWave[waveIdx][WAVEX] += increment;
	  }
  }

  void waveMoveBackward(int waveIdx)
  {
	  int increment = -1;
	  waveMoveForward(waveIdx, increment);
  }
  
  void drawWave()
  {
   for(int o = theWave.length - 1; o >= 0; o--)
   {
     int d = waveGetDir();
     if (
			d == DIR_DN // top to bottom //<>//
		  ||d == DIR_LT // right to left
		  ||d == DIR_UP // bottom to top
		  ||d == DIR_RT // left to right
		)
     {
       if(!waveIsInitialized(o))
       {
         if(o == 1 && !waveIsInitialized(0))
         {
           waveSetStartPosition(o, 1);
         }
         else
         {
           waveSetStartPosition(o, 0);
         }
       }
	     waveDraw(o);
	     waveEraseAtPrev(o);
       if(waveIsOnAfterLastLocation(o))
       {         
         if(o == 0) //<>// //<>//
         {
           for(int i = 0; i < theWave.length; i++)
           {
             if (i == 1)
             {
               waveMoveBackward(i);
             }
             waveErase(i, "(a)");             
             theWave[i][WAVEX] = -2;
             theWave[i][WAVEY] = -2;
           }
           // logic to set new wave direction
           int newD = -1;
           if (newD == -1 && d == DIR_DN)
           {
             newD = DIR_UP;
           }
           if (newD == -1 && d == DIR_UP)
           {
             newD = DIR_LT;
           }
           if (newD == -1 && d == DIR_LT)
           {
             newD = DIR_RT;
           }
           if (newD == -1 && d == DIR_RT)
           {
             newD = DIR_DN;
           }
           waveSetDir(newD);
         }        
         else
         {
           waveErase(o, "(b)");
           theWave[o][WAVEX] = -2;
           theWave[o][WAVEY] = -2;
         }
       }
       else
       {
		     waveMoveForward(o);
       }       
     }
     else
     {
       throw new java.lang.UnsupportedOperationException("not yet implemented for "+d);
     }

   }   
  }
  void drawboat()
  {
    int oldboatidx = theBoat[BOATIDX];
    if(theBoat[BOATSPRITE] == MAP_BOAT)
    {
     if(theWave[0][WAVEDIRECTION] == DIR_UP)
     {
       theBoat[BOATIDX] = theBoat[BOATIDX] - MAP_WIDTH;
     }
     if(theWave[0][WAVEDIRECTION] == DIR_RT)
     {
       theBoat[BOATIDX] = theBoat[BOATIDX] + 1;
     }
     if(theWave[0][WAVEDIRECTION] == DIR_DN)
     {
       theBoat[BOATIDX] = theBoat[BOATIDX] + MAP_WIDTH;
     }
     if(theWave[0][WAVEDIRECTION] == DIR_LT)
     {
       theBoat[BOATIDX] = theBoat[BOATIDX] - 1;
     }
   }
   if(locations[currentLocation].theMap[theBoat[BOATIDX]] != MAP_SAND && locations[currentLocation].theMap[theBoat[BOATIDX]] != MAP_HERO)
   {
     locations[currentLocation].theMap[oldboatidx] = MAP_WATER;
     locations[currentLocation].theMap[theBoat[BOATIDX]] = (byte)theBoat[BOATSPRITE];
     if(theBoat[INBOAT] == 1)
     {
       locations[currentLocation].Hero_Position_Idx = theBoat[BOATIDX];
     }
   }
   else
   {
     theBoat[BOATIDX] = oldboatidx;
   }
  }
  void drawBee()
  {
    for(int i = 0; i < theBee.length; i++)
    {
      int beepreviousidx = theBee[i][BEEY] * MAP_WIDTH + theBee[i][BEEX];
      int newBeeX = theBee[i][BEEX];
      int newBeeY = theBee[i][BEEY];
      byte random = (byte)random(1, 7);
      println(random);
      if(random == 1)
      {        
        newBeeY--;        
      }
      if(random == 2)
      {
        newBeeX++;
      }
      if(random == 3)
      {
        newBeeY++;
      }
      if(random == 4)
      {
        newBeeX--;
      }
      if(random == 5)
      {
        if(theBee[i][BEEY] > HiveY)
        {
          newBeeY--;
        }
        if(theBee[i][BEEY] <= HiveY)
        {
          newBeeY++;
        }
      }
      if(random == 6)
      {
        if(theBee[i][BEEX] >= HiveX)
        {
          newBeeX--;
        }
        if(theBee[i][BEEX] < HiveX)
        {
          newBeeX++;
        }
      }
      int newBeeIdx = newBeeY * MAP_WIDTH + newBeeX;
      if(newBeeIdx == beepreviousidx)
      {
        throw new java.lang.UnsupportedOperationException("newBeeIdx == beepreviousidx"); //<>//
      }
      if (((newBeeIdx) <= 0
        || (newBeeIdx) >= ((MAP_WIDTH) * (MAP_HEIGHT-1) - 1))
        || theMap[newBeeIdx] != MAP_BLACK
        || newBeeX < 0
        || newBeeX > MAP_WIDTH-1)
      {
        continue;
      }
      theBee[i][BEEY] = newBeeY;
      theBee[i][BEEX] = newBeeX;
      theMap[beepreviousidx] = MAP_BLACK;
      theMap[newBeeIdx] = MAP_BEE;
    }
  }
  void draw_savanna()
  {
   int x0 = 0;
   int y0 = 0;
   int tileWidth = tiles[0].pixelWidth;
   int tileHeight = tiles[0].pixelHeight;
   int snakeNewIdx;
   if(currentLocation == LOCATION_BEACH)
   {
     if((frameCount%12) == 0)
     {
       drawWave();
     }
     if((frameCount%30) == 0)
     {
       drawboat();
     }
   }
   if(currentLocation == LOCATION_HIVE)
   {
     if((frameCount %12) == 0)
     {
       drawBee();
     }
   }
   if((frameCount%60) == 0)
   { 
     if(currentLocation == LOCATION_CAVE)
     {
         snakeNewIdx = snakeIdx;
         int snakeYC = snakeNewIdx / MAP_WIDTH;
         int snakeXC = snakeNewIdx - (snakeYC*MAP_WIDTH);
         int HeroYC = Hero_Position_Idx/MAP_WIDTH;
         int HeroXC = Hero_Position_Idx-(HeroYC*MAP_WIDTH);
         if(snakeYC > HeroYC)
         {
           snakeNewIdx = snakeNewIdx - MAP_WIDTH;
         }
         if(snakeYC < HeroYC)
         {
           snakeNewIdx = snakeNewIdx + MAP_WIDTH;
         }
         if(snakeXC > HeroXC)
         {
           snakeNewIdx = snakeNewIdx - 1;
         }
         if(snakeXC < HeroXC)
         {
           snakeNewIdx= snakeNewIdx + 1;
         }
         if(theMap[snakeNewIdx] == MAP_BLACK || theMap[snakeNewIdx] == MAP_BRIDGE)
         {
           snakemovement(snakeNewIdx);
         }
         else
         {
           if(theMap[snakeNewIdx] == MAP_VOID)
           {
             snakeNewIdx = snakeIdx;
             if(snakeXC < HeroXC)
             {
               snakeNewIdx= snakeNewIdx + 1;
             }
             if(snakeXC > HeroXC)
             {
               snakeNewIdx= snakeNewIdx - 1;
             }
             snakemovement(snakeNewIdx);
           }
           if(theMap[snakeNewIdx] == MAP_HERO)
           {
             menukind = MENUKIND_COLLISION;
             menuopenreason = "The Snake has caught you.";
           }
         }
     }
     
     if(currentLocation == LOCATION_CAVE || currentLocation == LOCATION_SAVANNA)
     {
       for(int j = 0; j < animalInfo.length; ++j)
       {
         RailAnimal currentanimal = animalInfo[j];
         if(!currentanimal.animal_sleeping)
         {
           int newanimalRouteIdx = currentanimal.animalRouteIdx;
           newanimalRouteIdx++;
           if(newanimalRouteIdx >= currentanimal.animalRoute.length)
           {
              newanimalRouteIdx = 0;
           }
           byte atNextRailAnimalPosition = locations[currentLocation].theMap[currentanimal.animalRoute[newanimalRouteIdx][1] * MAP_WIDTH + currentanimal.animalRoute[newanimalRouteIdx][0]];
           int NextAnimalIdx = currentanimal.animalRoute[newanimalRouteIdx][1] * MAP_WIDTH + currentanimal.animalRoute[newanimalRouteIdx][0];
           if(   atNextRailAnimalPosition != MAP_HERO
              && atNextRailAnimalPosition != MAP_SNAKETAIL
              && atNextRailAnimalPosition != MAP_SNAKEBODY 
              && atNextRailAnimalPosition != MAP_SNAKEHEAD)
           {
             currentanimal.animalRouteIdx = newanimalRouteIdx;
           }
           else
           {
             if(atNextRailAnimalPosition == MAP_HERO)
             {
               menukind = MENUKIND_COLLISION;
               menuopenreason = "The Animal has caught you. You should go see a doctor.";
             }
             if(  atNextRailAnimalPosition == MAP_SNAKETAIL 
               || atNextRailAnimalPosition == MAP_SNAKEBODY)
             {
               for(int i = 0; i < theSnake.length; i++)
               {
                 if(theSnake[i][SNAKEIDX] == NextAnimalIdx)
                 {
                   for(int o = i; o >= 0; o--)
                   {
                     if(o == i)
                     {
                       theSnake[o][SNAKESPRITE] = MAP_BLACK;
                     }
                     else
                     {
                       if(theSnake[o][SNAKEALREADYGATHERED] == 0)
                       {
                         theSnake[o][SNAKESPRITE] = MAP_SNAKEDEAD;
                       }
                     }              
                   }
                   menukind = MENUKIND_COLLISION;
                   menuopenreason = "You see a Spider biting the Snake.";
                   break;
                 }
               }
             }
           }
           int LX = currentanimal.animalRoute[currentanimal.animalRouteIdx][0];
           int LY = currentanimal.animalRoute[currentanimal.animalRouteIdx][1];
           int LPX;
           int LPY;
           if(currentanimal.animalRouteIdx-1 >= 0)
           {
             LPX = currentanimal.animalRoute[currentanimal.animalRouteIdx-1][0];
             LPY = currentanimal.animalRoute[currentanimal.animalRouteIdx-1][1];
           }
           else
           {
             LPX = currentanimal.animalRoute[currentanimal.animalRoute.length-1][0];
             LPY = currentanimal.animalRoute[currentanimal.animalRoute.length-1][1];
           }
           locations[currentLocation].theMap[LPY*MAP_WIDTH+LPX] = currentanimal.animalSteppedOn;
           currentanimal.animal_stamina = currentanimal.animal_stamina - 1;
           if(currentanimal.animal_stamina == 0)
           {
             currentanimal.animal_sleeping = true;
             currentanimal.animal_stamina = currentanimal.animal_stamina_max;
             currentanimal.animal_sprite_number = currentanimal.animal_sprite_number_sleeping;
           }
           currentanimal.animalSteppedOn = locations[currentLocation].theMap[LY * MAP_WIDTH + LX];
           locations[currentLocation].theMap[LY * MAP_WIDTH + LX] = (byte)currentanimal.animal_sprite_number;
           //System.out.println(" - " + j);
         }
         else
         {
           currentanimal.animal_sleeptime = currentanimal.animal_sleeptime - 1;
           if(currentanimal.animal_sleeptime == 0)
           {
             currentanimal.animal_sleeping = false;
             currentanimal.animal_sleeptime = currentanimal.animal_sleepyness;
             currentanimal.animal_sprite_number = currentanimal.animal_sprite_number_awake;
           }
         }
       }
   }
   }
   for(int cy = 0; cy < MAP_HEIGHT; ++cy)
   {
     for(int cx = 0; cx < MAP_WIDTH; ++cx)
     {
         byte currentTileIdx = locations[currentLocation].theMap[MAP_WIDTH * cy + cx];
         int x = x0 + cx * tileWidth;
         int y = y0 + cy * tileHeight;
         image(tiles[currentTileIdx], x, y);
     }
   }
   fill(255,255,255);
   if(currentLocation == LOCATION_SAVANNA)
   {
     text(animalInfo[1].animalName + " sleeping? "+ animalInfo[1].animal_sleeping, animalInfo[1].getanimalX(), animalInfo[1].getanimalY());
     text(animalInfo[0].animalName + " sleeping? "+ animalInfo[0].animal_sleeping, animalInfo[0].getanimalX(), animalInfo[0].getanimalY());
   }
   if(currentLocation == LOCATION_CAVE)
   {
     text(animalInfo[1].animalName + " sleeping? "+ animalInfo[1].animal_sleeping, animalInfo[1].getanimalX(), animalInfo[1].getanimalY());
     text(animalInfo[0].animalName + " sleeping? "+ animalInfo[0].animal_sleeping, animalInfo[0].getanimalX(), animalInfo[0].getanimalY());   
   }
  }
}  
