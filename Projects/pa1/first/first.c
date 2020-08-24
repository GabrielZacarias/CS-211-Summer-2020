#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

    int n = 0, evens = 0, odds = 0;
    int i, j;

    //create file and open
    if(argc < 2)
    {
        printf("Need to pass an argument \n");
        return -1;
    }

    FILE *infile = fopen(argv[1], "r");

    fscanf(infile, "%d\n", &n);

    int arr[n];
    
    //store each number in array
    for(i = 0; i < n; i++)
    {
        fscanf(infile, "%d\t", &arr[i]);
    }

    //Make odd numbers in begining
    for(i = 0; i < n; i++)
    {
        for(j = i + 1; j < n; j++){
            //if the current number is even and next is odd, switch
            if(arr[i] % 2 == 0 && abs(arr[j]) % 2 == 1){
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
                i++;
            }

            //otherwise continue
            else
                continue;
        }
    }

    //find numbers of odds and evens
    for(i = 0; i < n; i++){
        if(arr[i] % 2 == 0)
            evens++;
        else
            odds++;
        
    }

    //order odds in asscending order
    for (i = 0; i < n - evens; i++)
    {

        for(j = i + 1; j < n - evens; j++)
        {
            if(arr[i] >= arr[j])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }

            else
                continue;
        }
    }

    //order evens in descending order
    for(i = n - 1; i > odds; i--)
    {
        for(j = i - 1; j >= odds; j--)
        {
            if(arr[i] >= arr[j])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }

            else
                continue;
        }
    }

    for (i = 0; i < n; i++){
        printf("%d\t", arr[i]);
    }

    fclose(infile);

    return 0;
}
