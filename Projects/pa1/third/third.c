#include <stdio.h>
#include <string.h>

void get(int pos, int number);
int comp(int pos, int* number);
int set(int pos, int* number, int goal);

int main(int argc, char *argv[]){
    int num = 0, index = 0, n = 0;
    char role[4];

    // //create file and open
    if(argc < 2)
    {
        printf("Need to pass an argument \n");
        return -1;
    }
    
    FILE *infile = fopen(argv[1], "r");

    fscanf(infile, "%d\n", &num);

    while(fscanf(infile, "%s\t%d\t%d\n", &role, &index, &n) != EOF)
    {
        //call get
        if(strcmp(role, "get") == 0)
            get(index, num);
        else if(strcmp(role, "comp") == 0)
        {
            num = comp(index, &num);
            
        }
        else if(strcmp(role, "set") == 0)
        {
            num = set(index, &num, n);
        }
        
    }

    fclose(infile);
    return 0;
}

//get method
void get(int pos, int number){
    int nthBit = 0;
    //move num to LSB and store 
    nthBit = (number >> pos) & 1;
    printf("%d\n", nthBit);

    return;
}

//compliment method
int comp(int pos, int* number){
    *number = *number ^ (1 << pos);
    
    printf("%d\n", *number);
    
    return *number;
}

//set method
int set(int pos, int* number, int goal){
    int bitMask = 1 << pos;

    if(goal == 0)
        *number = *number & ~bitMask;
    else 
        *number = *number | bitMask;
    
    printf("%d\n", *number);

    return *number;
}