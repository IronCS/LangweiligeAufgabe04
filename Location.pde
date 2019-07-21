class Location
{
  RailAnimal []animalInfo;
  byte[] theMap;
  int Hero_Position_Idx;
  void heroMoveChecker(int newHeroIdx, boolean HeroWrongY)
  {
    if(newHeroIdx == Hero_Position_Idx)
    {
      return;
    }
    if(Hero_Position_Idx != newHeroIdx && newHeroIdx >= 0 && newHeroIdx < MAP_WIDTH * MAP_HEIGHT && !HeroWrongY)
    {
      if(theMap[newHeroIdx] == MAP_BLACK || theMap[newHeroIdx] == MAP_BRIDGE)
      {
        theMap[newHeroIdx] = MAP_HERO;
        if(Hero_Position_Idx/MAP_WIDTH == 5 && currentLocation == LOCATION_CAVE)
        {
          theMap[Hero_Position_Idx] = MAP_BRIDGE;
        }
        else
        {
          theMap[Hero_Position_Idx] = MAP_BLACK;
        }
        Hero_Position_Idx = newHeroIdx;
      }
      else
      {
        menuopenreason = "";
        menuopen = true;
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
          gatheringwood = true;
          gatheringIdx = newHeroIdx;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_BRICK)
        {
          menuopenreason = "This Wall is too high to climb. \n Do you want to gather Stones from it?";
          gatheringstones = true;
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
          buildingbridge = true;
          gatheringIdx = newHeroIdx;
        }   
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_CAVE)
        {          
          menuopen = true;
          menuopenreason = "You are entering the Cave.";
          currentLocation = LOCATION_CAVE;
          theMap[Hero_Position_Idx] = MAP_BLACK;
          locations[currentLocation].Hero_Position_Idx = 631;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
        if(menuopenreason.equals("") && theMap[newHeroIdx] == MAP_LIGHT)
        {
          menuopen = true;
          menuopenreason = "You are leaving the Cave.";
          currentLocation = LOCATION_SAVANNA;
          theMap[Hero_Position_Idx] = MAP_BLACK;
          locations[currentLocation].Hero_Position_Idx = 4;
          locations[currentLocation].theMap[locations[currentLocation].Hero_Position_Idx] = MAP_HERO;
        }
      }
    }
  }
  void draw_savanna()
  {
   int x0 = 0;
   int y0 = 0;
   int tileWidth = tiles[0].pixelWidth;
   int tileHeight = tiles[0].pixelHeight;
  
   if((frameCount%60) == 0)
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
         if(locations[currentLocation].theMap[currentanimal.animalRoute[newanimalRouteIdx][1] * MAP_WIDTH + currentanimal.animalRoute[newanimalRouteIdx][0]] != MAP_HERO)
         {
           currentanimal.animalRouteIdx = newanimalRouteIdx;
         }
         else
         {
           menuopen = true;
           menuopenreason = "The Animal has caught you. You should go see a doctor.";
         }
         for(int i = 0; i < currentanimal.animalRoute.length; ++i)
         {
             int LRX = currentanimal.animalRoute[i][0];
             int LRY = currentanimal.animalRoute[i][1];
             if(locations[currentLocation].theMap[LRY*MAP_WIDTH+LRX] != MAP_HERO)
             {
               locations[currentLocation].theMap[LRY*MAP_WIDTH+LRX] = MAP_BLACK;
             }
             //System.out.print(LRX + ", " + LRY + "; ");
         }
         int LX = currentanimal.animalRoute[currentanimal.animalRouteIdx][0];
         int LY = currentanimal.animalRoute[currentanimal.animalRouteIdx][1];
         currentanimal.animal_stamina = currentanimal.animal_stamina - 1;
         if(currentanimal.animal_stamina == 0)
         {
           currentanimal.animal_sleeping = true;
           currentanimal.animal_stamina = currentanimal.animal_stamina_max;
           currentanimal.animal_sprite_number = currentanimal.animal_sprite_number_sleeping;
         }
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
   else
   {
     text(animalInfo[1].animalName + " sleeping? "+ animalInfo[1].animal_sleeping, animalInfo[1].getanimalX(), animalInfo[1].getanimalY());
     text(animalInfo[0].animalName + " sleeping? "+ animalInfo[0].animal_sleeping, animalInfo[0].getanimalX(), animalInfo[0].getanimalY());   
   }
  }
}  
