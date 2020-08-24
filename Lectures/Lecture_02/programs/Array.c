/*
  Array Program
  Compile this program using the following command:
  gcc Array.c -Werror -Wall -fsanitize=address -o Array
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

  int array[10] = {1,2,3,4,5,6,7,8,9,0};
  int *y = array;

  //printf("Array %d\n", array); // This will give error

  printf("Array starts at address %p\n\n", array);   // This is okay because array is an address

  printf("Array element at offset 5 is %d\n", array[5]);
  printf("Array element at offset 5 is %d\n", *(array + 5));
  printf("Array element at offset 5 is %d\n\n", *(y + 5));

  // print all elements in array
  int x;
  printf("Elements in list: ");
  for(x = 0; x < 10; x++){
    printf("%d ", array[x]);
  }
  printf("\n");

  return 0;

}
