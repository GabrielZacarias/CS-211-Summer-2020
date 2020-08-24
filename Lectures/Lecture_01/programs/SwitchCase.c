/*
Example switch case program.
Build this program using the following command:
gcc SwitchCase.c -Werror -Wall -fsanitize=address -o SwitchCase
*/

#include <stdlib.h>
#include <stdio.h>


int main(int argc, char** argv){

	int i;

	i = 2;

	switch(i){
		case 0:
			printf("Case 0\n");
		case 1:
			printf("Case 1\n");
			break;
		case 2:
			printf("Case 2\n");
		case 3:
			printf("Case 3\n");
		default:
			printf("Default\n");
	}

	return 0;
}
