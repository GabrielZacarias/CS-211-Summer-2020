/*
  Arguments Program
  to understand how arguments are passed into a program

  Compile this program using the following command:
  gcc Arguments.c -Werror -Wall -fsanitize=address -o Arguments
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){
  int x;

  printf("Number of arguments passed in: %d\n", argc);

  printf("The following are the arguments passed in:\n");

  for(x = 0; x < argc; x++){
    printf("%s\n", argv[x]);
  }

  return 0;
}
