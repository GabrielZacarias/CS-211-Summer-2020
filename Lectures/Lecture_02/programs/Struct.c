/*
  Struct Program
  Compile this program using the following command:
  gcc Struct.c -Werror -Wall -fsanitize=address -o Struct
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct flightType{
  char flightNum[7];
  int altitude;
  int longitude;
  int latitude;
  int heading;
  double airSpeed;
};

int willCollide(struct flightType *planeA, struct flightType *planeB){

  if(planeA->altitude == planeB->altitude){
    return 1;
  }else{
    return 0;
  }

}

int main(int argc, char *argv[]){

  struct flightType p1;
  struct flightType p2;

  strcpy(p1.flightNum, "123456");
  p1.altitude = 600;
  p1.longitude = 50;
  p1.latitude = 35;
  p1.heading = 1;
  p1.airSpeed = 500.5;


  strcpy(p2.flightNum, "123458");
  p2.altitude = 600;
  p2.longitude = 50;
  p2.latitude = 35;
  p2.heading = 1;
  p2.airSpeed = 500.5;


  printf("Will flight %s collide with flight %s?\n",
          p1.flightNum, p2.flightNum);

  if(willCollide(&p1,&p2)){
    printf("Yes\n");
  }else{
    printf("No\n");
  }


  return 0;

}
