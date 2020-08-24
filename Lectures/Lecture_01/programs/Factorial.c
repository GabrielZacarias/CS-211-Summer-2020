/*
Factorial Program
Compile this program using the following command:
gcc Factorial.c -Werror -Wall -fsanitize=address -o Factorial
*/

#include <stdlib.h>
#include <stdio.h>


int Factorial(int n){
  int i;
  int result = 1;

  for(i = 1; i <= n; i++){
    result = result * i;
  }

  return result;
}


int main(int argc, char** argv){

  int input;
  int result;

  printf("Enter in a number\n");

  scanf("%d", &input);

  result = Factorial(input);

  printf("%d! is equal to %d\n", input, result);

  return 0;

}
