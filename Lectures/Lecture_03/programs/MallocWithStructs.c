/*
  MallocWithStructs Program

  Compile this program using the following command:
  gcc MallocWithStructs.c -Werror -Wall -fsanitize=address -o MallocWithStructs
*/

#include <stdlib.h>
#include <stdio.h>


struct node{
  int value;
};


int main(int argc, char *argv[]){

  int numNodes = 10;
  struct node *myArray;
  int x;

  // Allocate space for array of 10 nodes
  myArray = (struct node*) malloc(sizeof(struct node) * numNodes);

  // Set values within each node of the array
  for(x = 0; x < numNodes; x++){
    myArray[x].value = x;
  }

  // Print array values
  printf("My Node Values:\n");
  for(x = 0; x < numNodes; x++){
    printf("%d\n", myArray[x].value);
  }

  // make sure to free dynamically allocated array
  free(myArray);

  return 0;
}
