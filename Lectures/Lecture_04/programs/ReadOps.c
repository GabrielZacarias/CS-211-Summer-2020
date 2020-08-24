#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

	if(argc < 2){
		printf("Need to pass an argument\n");
		return -1;
	}

	char *filename = argv[1];

	FILE *infile = fopen(filename, "r");

	char stringBuffer[10][10];
	int bitIndex;
	int value;

	int index = 0;
	while(fscanf(infile, "%s\t%d\t%d",
	      stringBuffer[index], &bitIndex, &value) != EOF){
		printf("%s\t%d\t%d\n", stringBuffer, bitIndex, value);
		index++;
	}
	
	fclose(infile);

	return 0;
}
