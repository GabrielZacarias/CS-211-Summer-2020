/*
  String Program
  Compile this program using the following command:
  gcc Strings.c -Werror -Wall -fsanitize=address -o Strings
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>


int main(int argc, char *argv[]){

  char str1[10] = {'a','b','c','d','e','f','g','h','i','\0'};
  char str2[10] = "result";
  char str3[10];

  strcpy(str3, str2); // copy str2 into char array str3

  printf("str1 is %s and located at address %p\n", str1, str1);
  printf("str2 is %s and located at address %p\n", str2, str2);
  printf("str3 is %s and located at address %p\n\n", str3, str3);

  printf("comparing str1 and str2, we get %d\n", strcmp(str1, str2));
  printf("comparing str2 and str3, we get %d\n", strcmp(str2, str3));

  return 0;

}
