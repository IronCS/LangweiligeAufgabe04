class Location
{
  RailAnimal []animalInfo;
  byte[] theMap;
  int Hero_Position_Idx;
  byte Hero_Previous = MAP_SAVANNA1;
  int snakeIdx = 7;
  int snakeTailPreviousIdx;
  int o = -1;
  byte getByteOn(byte X, byte Y)
  {
    byte ByteOn = theMap[Y * MAP_WIDTH + X];
    return ByteOn;
  };
  void heroMoveChecker(int newHeroIdx, boolean HeroWrongY)
  {
    if(newHeroIdx == Hero_Position_Idx)
    {
      return;
    }
    if(Hero_Position_Idx != newHeroIdx && newHeroIdx >= 0 && newHeroIdx < MAP_WIDTH * MAP_HEIGHT && !HeroWrongY)
    {
      if(!inBoat && theMap[newHeroIdx] == MAP_BLACK || theMap[newHeroIdx] == MAP_BRIDGE || theMap[newHeroIdx] == MAP_SAVANNA1 || theMap[newHeroIdx] == MAP_SAVANNA2 || theMap[newHeroIdx] == MAP_SAND)
      {
        theMap[Hero_Position_Idx] = Hero_Previous;
        Hero_Previous = theMap[newHeroIdx];
        theMap[newHeroIdx] = MAP_HERO;
        Hero_Position_Idx = newHeroIdx;
      }
      else
      {
        menuopenreason = "";
        menukind = MENUKIND_COLLISION;
        if(newHeroIdx < 0 || newHeroIdx >= MAP_WIDTH*MAP_HEIGHT || HeroWrongY && menuopenreason.equals(""))
        {
          menuopenreason = "End of the Map.";
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SAND && inBoat)
        {
          menukind = MENUKIND_LEAVINGBOAT;
          menuopenreason = "Do you want to leave the Boat?";
          gatheringIdx = newHeroIdx;
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
            menukind = MENUKIND_COLLISION;
            menuopenreason = "You are entering the Cave.";
            currentLocation = LOCATION_CAVE;
            theMap[Hero_Position_Idx] = MAP_SAVANNA1;
            locations[currentLocation].Hero_Position_Idx = 631;
            locations[currentLocation].Hero_Previous = MAP_BLACK;   
            locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
          }
          if(currentLocation == LOCATION_BEACH)
          {
            menukind = MENUKIND_COLLISION;
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
          menukind = MENUKIND_COLLISION;
          menuopenreason = "You are leaving the Cave.";
          currentLocation = LOCATION_SAVANNA;
          theMap[Hero_Position_Idx] = MAP_BLACK;
          locations[currentLocation].Hero_Position_Idx = 4;
          locations[currentLocation].Hero_Previous = MAP_BLACK;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_SANDTRANSFER)
        {          
          menukind = MENUKIND_COLLISION;
          menuopenreason = "You are leaving the Cave.";
          currentLocation = LOCATION_BEACH;
          theMap[Hero_Position_Idx] = MAP_SAND;
          locations[currentLocation].Hero_Position_Idx = 761;
          locations[currentLocation].Hero_Previous = MAP_SAND;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO; //<>//
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_WATER)
        {
          menukind = MENUKIND_BUILDINGBOAT;
          menuopenreason = "The Water is deep and Wavy. \nDo you want to build a boat?";
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BOAT)
        {
          menukind = MENUKIND_ENTERINGBOAT;
          menuopenreason = "Do you want to enter the Boat and try to get to the other side of the Sea?";
          gatheringIdx = Hero_Position_Idx;
          boatIdx = newHeroIdx;
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
  void drawWave()
  {
   if(theWave[WAVEDIRECTION] == 0)
   {
     if(o == -1)
     {
       o = MAP_HEIGHT - 3;
     }
     theWave[WAVEY] = o;
     for(int i = 0; i < MAP_WIDTH; i++)
     {
       if(theMap[theWave[WAVEY] * MAP_WIDTH + i] != MAP_BOAT)
       {
         theMap[theWave[WAVEY] * MAP_WIDTH + i] = MAP_WAVE;
       }
       if(theWave[WAVEY] + 1 < MAP_HEIGHT - 2 && theMap[(theWave[WAVEY] + 1) * MAP_WIDTH + i] != MAP_BOAT)
       {
         theMap[(theWave[WAVEY] + 1) * MAP_WIDTH + i] = MAP_WATER;
       }
     }
     if(o < 3)
     {
       for(int i = 0; i < MAP_WIDTH; i++)
       {
         if(theMap[2 * MAP_WIDTH + i] != MAP_BOAT)
         {
           theMap[2 * MAP_WIDTH + i] = MAP_WATER;
         }
       }
       o = -1;
       theWave[WAVEDIRECTION] = (int)random(0, 4);
       return;
     }
     else
     {
       o--;
       return;
     }
   }
   if(theWave[WAVEDIRECTION] == 1)
   {
     if(o == -1)
     {
       o = 0;
     }
     theWave[WAVEX] = o;
     for(int i = 2; i < MAP_HEIGHT - 2; i++)
     {        
       if(theMap[i * MAP_WIDTH + theWave[WAVEX]] != MAP_BOAT)
       {
         theMap[i * MAP_WIDTH + theWave[WAVEX]] = MAP_WAVE;
       }
       if(theWave[WAVEX] - 1 >= 0 && theMap[i * MAP_WIDTH + (theWave[WAVEX] - 1)] != MAP_BOAT)
       {         
         theMap[i * MAP_WIDTH + (theWave[WAVEX] - 1)] = MAP_WATER;
       }
     }
     if(o == MAP_WIDTH - 1)
     {
       for(int i = 2; i < MAP_HEIGHT - 2; i++)
       {
         if(theMap[i * MAP_WIDTH + MAP_WIDTH-1] != MAP_BOAT)
         {
           theMap[i * MAP_WIDTH + MAP_WIDTH-1] = MAP_WATER;
         }
       }
       o = -1;
       theWave[WAVEDIRECTION] = (int)random(0, 4);
       return;
     }
     else
     {
       o++;
       return;
     }
   }
   if(theWave[WAVEDIRECTION] == 2)
   {
     if(o == -1)
     {
       o = 2;
     }
     theWave[WAVEY] = o;
     for(int i = 0; i < MAP_WIDTH; i++)
     {
       if(theMap[theWave[WAVEY] * MAP_WIDTH + i] != MAP_BOAT)
       {
         theMap[theWave[WAVEY] * MAP_WIDTH + i] = MAP_WAVE;
       }
       if(theWave[WAVEY] - 1 > 1 && theMap[(theWave[WAVEY] - 1) * MAP_WIDTH + i] != MAP_BOAT)
       {
         theMap[(theWave[WAVEY] - 1) * MAP_WIDTH + i] = MAP_WATER;
       }
     }
     if(o == MAP_HEIGHT - 3)
     {
       for(int i = 0; i < MAP_WIDTH; i++)
       {
         if(theMap[(MAP_HEIGHT - 3) * MAP_WIDTH + i] != MAP_BOAT)
         {
           theMap[(MAP_HEIGHT - 3) * MAP_WIDTH + i] = MAP_WATER;
         }
       }
       o = -1;
       theWave[WAVEDIRECTION] = (int)random(0, 4);
       return;
     }
     else
     {
       o++;
       return;
     }
   }
   if(theWave[WAVEDIRECTION] == 3)
   {
     if(o == -1)
     {
       o = MAP_WIDTH - 1;
     }
     theWave[WAVEX] = o;
     for(int i = 2; i < MAP_HEIGHT - 2; i++)
     {              
       if(theMap[i * MAP_WIDTH + theWave[WAVEX]] != MAP_BOAT)
       {
         theMap[i * MAP_WIDTH + theWave[WAVEX]] = MAP_WAVE;
       }
       if(theWave[WAVEX] + 1 < MAP_WIDTH && theMap[i * MAP_WIDTH + (theWave[WAVEX] + 1)] != MAP_BOAT)
       {         
         theMap[i * MAP_WIDTH + (theWave[WAVEX] + 1)] = MAP_WATER;
       }
     }
     if(o == 0)
     {
       for(int i = 2; i < MAP_HEIGHT-2; i++)
       {
         if(theMap[i * MAP_WIDTH] != MAP_BOAT)
         {
           theMap[i * MAP_WIDTH] = MAP_WATER;
         }
       }
       o = -1;
       theWave[WAVEDIRECTION] = (int)random(0, 4);
       return;
     }
     else
     {
       o--;
       return;
     }
   }
  }
  void draw_savanna()
  {
   int x0 = 0;
   int y0 = 0;
   int tileWidth = tiles[0].pixelWidth;
   int tileHeight = tiles[0].pixelHeight;
   int snakeNewIdx;
   if(currentLocation == LOCATION_BEACH && (frameCount%12) == 0)
   {
     drawWave();
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
