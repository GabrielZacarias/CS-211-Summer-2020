#include <stdio.h>
#include <stdlib.h>

typedef struct node{
    int value;
    struct node *next;
} Node;

Node *entries[10000];

void insert(int n, int i);
void search(int currVal, int i);
void clean();

int main(int argc, char *argv[]){
    char stringBuffer[1];
    int num = 0;
    int index = 0;

    //create file and open
    if(argc < 2)
    {
        printf("Need to pass an argument \n");
        return -1;
    }
    
    FILE *infile = fopen(argv[1], "r");

    int i;

    //set each node to NULL 
    for(i = 0; i < 10000; i++)
    {
        entries[i] = NULL;
    }

    //read file
    while(fscanf(infile, "%c\t%d\n", stringBuffer, &num) != EOF)
    {
        index = abs(num) % 10000;
        //call insert if i
        if(stringBuffer[0] == 'i')
            insert(num, index);
        
        //call search if s
        else if(stringBuffer[0] == 's')
            search(num, index);
        
        //otherwise print error
        else
            printf("Character entered is not i or s.\n");   
    }

    //free space and close file
    clean();
    fclose(infile);
    return 0;
}

//search method
void search(int currVal, int i){
    
    Node *temp;

    //traverse every node and compare with currVal
    for(temp = entries[i]; temp != NULL; temp = temp->next)
    {
            if(temp->value == currVal)
            {
                printf("present\n");
                return;
            }
    }

    printf("absent\n");

    return;
}

//insert method
void insert(int currVal, int i){
    Node *temp;

    //traverse every node and check if exists
    for(temp = entries[i]; temp != NULL; temp = temp->next)
    {
        if(temp->value == currVal)
        {
            printf("duplicate\n");
            return;
        }
    }

    //if it doesn't, allocate memory, and add to proper index 
    //(problem set 9 in 112)
    Node *new = (Node *)malloc(sizeof(Node));
    new->value = currVal;
    new->next = entries[i];
    entries[i] = new;
    printf("inserted\n");
    
    return;
}

//clean method
void clean(){
    int i;

    for(i = 10000; i >= 0; i--)
    {
        if(entries[i] != NULL)
            entries[i]= NULL;
            
        free(entries[i]);
    }

    return;
}
