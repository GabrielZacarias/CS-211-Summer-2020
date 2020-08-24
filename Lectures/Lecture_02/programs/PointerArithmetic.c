/*
  PointerArithmetic  Program
  Compile this program using the following command:
  gcc PointerArithmetic.c -Werror -Wall -fsanitize=address -o PointerArithmetic
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

  int x = 5;
  int *y = &x;

  printf("x is %p\n", &x);
  printf("y is %p\n", y);
  printf("y + 1 calculates to %p\n", y + 1);
  printf("y - 1 calculates to %p\n", y - 1);
  printf("y + 2 calculates to %p\n", y + 2);
  printf("y - 2 calculates to %p\n", y - 2);


  return 0;

}
