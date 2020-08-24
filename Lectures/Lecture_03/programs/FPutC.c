/*
  C program to illustate fgetc() function
  copied from https://www.geeksforgeeks.org/fgetc-fputc-c/

  Compile this program using the following command:
  gcc FPutC.c -Werror -Wall -fsanitize=address -o FPutC

  Will output to file named "output.txt"
*/

#include<stdio.h>

int main(int argc, char *argv[]){
    int i = 0;
    FILE *fp = fopen("output.txt","w");

    // Return if could not open file
    if (fp == NULL)
      return 0;

    char string[] = "This is how you use fputc()\n";
    char received_string[100];

    for (i = 0; string[i]!='\0'; i++)
        fputc(string[i], fp);         // Input string into the file a single character at a time

    fclose(fp);
    fp = fopen("output.txt","r");

    // Reading the string from file
    fgets(received_string,100,fp);

    printf("%s", received_string);

    fclose(fp);
    return 0;
}
