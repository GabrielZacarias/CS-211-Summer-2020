#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]){

	if(argc < 2){
		printf("Need to pass an argument\n");
		return -1;
	}

	char *filename = argv[1];

	FILE *infile = fopen(filename, "r");

	int arraySize;

	fscanf(infile, "%d\n", &arraySize);
	printf("Array Size is %d\n", arraySize);

	int array[arraySize];
	//int *array = (int*) malloc(sizeof(int) * arraySize);

	int x;
	for(x = 0; x < arraySize; x++){
		fscanf(infile, "%d", &array[x]);
	}

	for(x = 0; x < arraySize; x++){
		printf("%d ", array[x]);
	}
	printf("\n");

	fclose(infile);
	// free(array);


	return 0;
}
