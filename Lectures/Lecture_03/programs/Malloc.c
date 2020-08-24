/*
  Malloc Program

  Compile this program using the following command:
  gcc Malloc.c -Werror -Wall -fsanitize=address -o Malloc
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

  int numInts = 10;
  int *myArray;
  int x;

  // Allocate space for array of 10 integers
  myArray = (int *) malloc(sizeof(int) * numInts);

  // set values within the array
  for(x = 0; x < numInts; x++){
    myArray[x] = x;
  }

  // print array values
  printf("My Array:\n");
  for(x = 0; x < numInts; x++){
    printf("%d\n", myArray[x]);
  }

  // make sure to free dynamically allocated array
  free(myArray);

  return 0;
}
