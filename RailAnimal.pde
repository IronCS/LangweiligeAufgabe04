class RailAnimal
{
  int animal_sprite_number;
  int animal_sprite_number_sleeping;
  int animal_sprite_number_awake;
  int animalRoute[][];
  boolean animal_sleeping;
  int animal_sleeptime;
  int animal_sleepyness;
  int animal_stamina;
  int animal_stamina_max;
  int animalRouteIdx;
  String animalName;
  int getanimalCX(){return animalRoute[animalRouteIdx][0];}
  int getanimalCY(){return animalRoute[animalRouteIdx][1];}
  int getanimalX(){return getanimalCX() * TILE_WIDTH;}
  int getanimalY(){return getanimalCY() * TILE_HEIGHT;}
  byte animalSteppedOn;
}
