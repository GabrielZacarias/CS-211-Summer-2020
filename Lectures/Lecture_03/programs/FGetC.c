/*
  C program to illustate fgetc() function
  copied from https://www.geeksforgeeks.org/fgetc-fputc-c/

  Compile this program using the following command:
  gcc FGetC.c -Werror -Wall -fsanitize=address -o FGetC

  Need to have text file called input.txt to read
*/

#include <stdio.h>

int main(int argc, char *argv[]){

    // open the file
    FILE *fp = fopen("input.txt","r");

    // Return if could not open file
    if (fp == NULL)
      return 0;

    do
    {
        // Taking input single character at a time
        char c = fgetc(fp);

        // Checking for end of file
        if (feof(fp))
            break ;

        printf("%c", c);
    }  while(1);

    fclose(fp);

    return 0;
}
