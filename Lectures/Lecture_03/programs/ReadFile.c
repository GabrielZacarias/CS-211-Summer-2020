/*
  ReadFile Program

  Compile this program using the following command:
  gcc ReadFile.c -Werror -Wall -fsanitize=address -o ReadFile

  Need to have a file called infile.txt to read
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){
  char name[10];
  int month;
  int day;
  int year;
  double gpa;

  FILE *infile = fopen("infile.txt", "r");

  fscanf(infile, "%s %d/%d/%d %lf",
      name, &month, &day, &year, &gpa);

  printf("Name is %s\n", name);
  printf("Birthday is %d/%d/%d\n", month, day, year);
  printf("GPA is %f\n", gpa);

  fclose(infile);

  return 0;
}
