#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

typedef struct block{
    int valid;
    unsigned long tag;
    unsigned int dat;
    struct block *next;
}block;

int reads = 0;
int writes = 0;
int hits = 0;
int misses = 0;

void callWrite(long int tag, int setIndex, block **cache, int sets, int lines);
void callRead(long int tag, int setIndex, block **cache, int sets, int lines, int range);

int main(int argc, char *argv[])
{
    int cacheSize = atoi(argv[1]);
    int blockSize = atoi(argv[2]);
    char *cachePolicy = argv[3];
    FILE *infile = fopen(argv[5], "r");
    int sets = 0;
    int linesPerSet = 0;
    char readWrite[5];
    unsigned long address;

    //check for proper input
    if(argc != 6)
    {
        printf("Need to pass 6 arguments.\n");
        return 0;
    }

    if(infile == NULL)
    {
        printf("File could not be found.\n");
        return 0;
    }

    if(strcmp(cachePolicy, "fifo") != 0 && strcmp(cachePolicy, "lru") != 0)
    {
        printf("Cache policy does not match fifo.\n");
        return 0;
    }

    //check associativity type
    if(strcmp(argv[4], "direct") == 0)
    {
        sets = cacheSize / blockSize;
        linesPerSet = 1;
    }
    else if(strstr(argv[4], "assoc:") != NULL)
    {
        sscanf(argv[4], "assoc:%d", &linesPerSet);
        sets = cacheSize / (blockSize * linesPerSet);
    }
    else if(strcmp(argv[4], "assoc") == 0)
    {
        sets = 1;
        linesPerSet = cacheSize / blockSize;
    }
    else
    {
        printf("associativity not in correct format.\n");
        return 0;
    }
    
    //find tag bits
    int bitsOffset = log2(blockSize);
    int bitsSet = log2(sets);
    
    //build cache and initialize
    block **cache = malloc(sizeof(block*) * sets);

    for(int i = 0; i < sets; i++)
    {
        cache[i] = malloc(sizeof(block) * linesPerSet);

        for(int j = 0; j < linesPerSet; j++)
        {
            cache[i][j].valid = 0;
        }
    }

    //traverse file
    while(fscanf(infile, "%s %lx\n", readWrite, &address) != EOF && strcmp(readWrite, "#eof") != 0)
    {
        //mask and get index
        long int tag = address >> (bitsOffset + bitsSet);
        int setIndex = (address >> bitsOffset) & ((1 << bitsSet) - 1);

        if(strcmp(readWrite, "W") == 1 && strcmp(readWrite, "R") == 1)
        {
            printf("Read/Write command is not correct.\n");
            exit(0);
        }
        
        //call proper function based on letter
        if(strcmp(readWrite, "R") == 0)
        {
            callRead(tag, setIndex, cache, sets, linesPerSet, 0);
        }
        else if(strcmp(readWrite, "W") == 0)
        {
            writes++;
            callWrite(tag, setIndex, cache, sets, linesPerSet);
        }
    }

    printf("Memory reads: %d\n", reads);
    printf("Memory writes: %d\n", writes);
    printf("Cache hits: %d\n", hits);
    printf("Cache misses: %d\n", misses);

    fclose(infile);

    return 0;
}

//function calls
void callWrite(long int tag, int setIndex, block **cache, int sets, int lines){
    for(int i = 0; i < lines; i++)
    {
        //hit found
        if(cache[setIndex][i].tag == tag && cache[setIndex][i].valid == 1)
        {
            hits++;
            return;
        }
    }

    callRead(tag, setIndex, cache, sets, lines, 0);
    return;
}

void callRead(long int tag, int setIndex, block **cache, int sets, int lines, int range){

    //check for hit
    for(int i = 0; i < lines; i++)
    {
        if(cache[setIndex][i].tag == tag && cache[setIndex][i].valid == 1)
        {
            hits++;
            return;
        }
    }

    //miss found
    misses++;
    reads++;

    //traverse validity
    for(int i = 0; i < lines; i++)
    {
        if(cache[setIndex][i].valid == 1)
        {
            cache[setIndex][i].dat++;

            if(cache[setIndex][i].dat > range)
                range = cache[setIndex][i].dat;
        }

        if(cache[setIndex][i].valid == 0)
        {
            cache[setIndex][i].valid = 1;
            cache[setIndex][i].tag = tag;
            return;
        }
    }

    //data has reached the range, reset
    for(int i = 0; i < lines; i++)
    {
        if(cache[setIndex][i].dat == range)
        {
           cache[setIndex][i].dat = 0;
           cache[setIndex][i].valid = 1;
           cache[setIndex][i].tag = tag; 
        }
    }

    return;
}