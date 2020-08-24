/*
  WriteFile Program

  Compile this program using the following command:
  gcc WriteFile.c -Werror -Wall -fsanitize=address -o WriteFile

  Will write to file outfile.txt
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

  int x = 10;

  FILE *outfile = fopen("outfile.txt", "w");

  fprintf(outfile, "Hello I am writing to a file. x = %d\n", x);

  fclose(outfile);

  return 0;
}
