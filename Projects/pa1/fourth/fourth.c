#include <stdio.h>
#include <stdlib.h>

int main(int argc, char argv[]){

    //create file and open
    if(argc < 3)
    {
        printf("Need to pass two arguments\n");
        return -1;
    }

    int trainCols = 0;
    int trainRows = 0;

    //////////////////////
    //   training data  //
    //////////////////////
    FILE *trfile = fopen(argv[1], "r");

    fscanf(trfile, "%d\n", &trainCols);
    fscanf(trfile, "%d\n", &trainRows);

    double **matrixX = (double**)malloc(sizeof(double*) * trainRows);
    double **matrixY = (double**)malloc(sizeof(double*) * trainRows);

    int i, j;
    
    //allocate space for each array index
    for(i = 0; i < trainRows; i++)
    {
        matrixX[i] = (double*)malloc(sizeof(double) * (trainCols + 1));
        matrixY[i] = (double*)malloc(sizeof(double) * 1);
    }

    //set file numbers on each index
    for(i = 0; i < trainRows; i++)
    {
        for(j = 0; j < (trainCols + 1); j++)
        {
            //set 1 for first column
            if(j == 0)
                matrixX[i][j] = 1;
            else
                fscanf(trfile, "%lf,", &matrixX[i][j]);
        }

        //store price on matrixY
        fscanf(trfile, "lf,", &matrixY[i][0]);
        fscanf(trfile, "\n");
    }


    ///////////////////
    //   test data   //
    ///////////////////
    int testNum = 0;

    FILE *tefile = fopen(argv[2], "r");

    fscanf(tefile, "%d\n", &testNum);

    double **testMatrix = (double**)malloc(sizeof(double*) * testNum);

    //allocate space for each array index
    for(i = 0; i < testNum; i++)
    {
        testMatrix[i] = (double*)malloc(sizeof(double) * trainRows);
    }

    //set file numbers on each array index
    for(i = 0; i < testNum; i++)
    {
        for(j = 0; j < trainCols; j++)
        {
            fscanf(tefile, "%lf,", &testMatrix[i][j]);
        }

        fscanf(tefile, "\n");
    }

    ///////////////////////////
    //   calculate transpose //
    ///////////////////////////
    double **matrixTranspose = (double**)malloc(sizeof(double*) * trainRows);

    //allocate space for each array index
    for(i = 0; i < (trainCols + 1); i++)
    {
        matrixTranspose[i] = (double*)malloc(sizeof(double) * trainRows);
    }

    //switch
    for(i = 0; i < (trainCols + 1); i++)
    {
        for(j = 0; j < trainRows; j++)
        {
            matrixTranspose[i][j] = matrixX[j][i];
        }
    }

    ///////////////////////////
    //   calculate multiply  //
    ///////////////////////////
    double **matrixMultiplication = (double**)malloc(sizeof(double*) * (trainCols+1));
    double hold = 0;
    int k = 0;

    //allocate space for each array index
    for(i = 0; i < (trainCols + 1); i++)
    {
        matrixMultiplication[i] = (double*)malloc(sizeof(double) * (trainCols + 1));
    }

    //multiply
    for(i = 0; i < (trainCols + 1); i++)
    {
        for(j = 0; j < (trainCols + 1); j++)
        {
            hold = 0;

            for(k = 0; k < trainRows; k++)
            {
                hold = hold + (matrixX[i][k] * matrixTranspose[k][j]);
            }

            matrixMultiplication[i][j] = hold;
        }
    }

    ///////////////////////////
    //   calculate inverse   //
    ///////////////////////////
    double **augmented = (double**)malloc(sizeof(double*) * trainRows);

    //allocate space for each column
    for(i = 0; i < (trainCols + 1); i++)
    {
        augmented[i] = (double*)malloc(sizeof(double) * ((trainCols + 1) * 2));
    }

    //add matrix to inverse
    for(i = 0; i < trainRows; i++)
    {
        for(j = 0; j < (trainCols + 1); j++)
        {
            augmented[i][j] = matrixMultiplication[i][j];
        }
    }

    //add augmentation to inverse 
    for(i = 0; i < trainRows; i++)
    {
        for(j = (trainCols + 1); j < ((trainCols + 1) * 2); j++)
        {
            if(j == (i + trainCols))
                augmented[i][j] = 1;
            
            else
                augmented[i][j] = 0;
        }
    }

    //make diagonal 1's
    // for(i = 0; i < trainRows; i++)
    // {
    //     for(j = 0; j < ((trainCols + 1)*2); j++)
    //     {
    //         if(i == j)
    //         {
    //             hold = augmented[i][j];

    //             for(k = 0; k < (2*(trainCols+1)); k++)
    //             {
    //                 augmented[i][k] = augmented[i][k] / hold;
    //             }

    //             break;
    //         }
    //     }
    // }

    // printf("\nAUGMENTED\n");
    // for(i = 0; i < trainRows; i++)
    // {
    //     for(j = 0; j < ((trainCols + 1)*2); j++)
    //         printf("%0.0lf ", augmented[i][j]);

    //     printf("\n");
    // }

    //Gauss elimination
    double factor;

    for(i = 0; i < trainRows; i++)
    {
        factor = augmented[i][i];

        for(j = 0; j < ((trainCols+1) *2); j++)
        {
            augmented[i][j] = augmented[i][j] / factor;
        }

        for(k = 0; k < trainRows; k++)
        {
            factor = augmented[k][i];

            for(j = 0; j < ((trainCols+1)*2); j++)
            {
                k = i;

                augmented[i][j] = augmented[i][j] * factor;
                augmented[i][j] = augmented[i][j] - augmented[k][j];
            }
        }

    }

    //create inverse final matrix
    double **inverse = (double**)malloc(sizeof(double*) * trainRows);

    //allocate space for each column
    for(i = 0; i < (trainCols + 1); i++)
    {
        inverse[i] = (double*)malloc(sizeof(double) * ((trainCols + 1)));
    }

    //add values
    for(i = 0; i < trainRows; i++)
    {
        for(j = 0; j < (trainCols + 1); j++)
        {
            inverse[i][j] = augmented[i][j + trainCols];
        }
    }

    // printf("\nINVERSE\n");
    // for(i = 0; i < trainRows; i++)
    // {
    //     for(j = 0; j < (trainCols + 1); j++)
    //         printf("%0.0lf ", inverse[i][j]);

    //     printf("\n");
    // }


    ///////////////////////////
    //   calculate weight    //
    ///////////////////////////
    double **weight = (double**)malloc(sizeof(double*) * trainRows);

    for(i = 0; i < trainCols; i++)
    {
        weight[i] = (double*)malloc(sizeof(double) * trainCols++);
    }


    //multiply inverse by matrixTranspose
    // double **inverseXtranspose = (double**)malloc(sizeof(double*) * trainCols++);

    // for(i = 0; i < trainCols; i++)
    // {
    //     inverseXtranspose[i] = (double*)malloc(sizeof(double) * trainCols++);
    // }


    //multiply inverseXtranspose with matrixY

    

    //free memory allocation
    for(i = 0; i < trainRows; i++)
    {
        free(matrixX[i]);
        free(matrixY[i]);
        free(matrixTranspose[i]);
        free(matrixMultiplication[i]);
        free(weight[i]);
        free(augmented[i]);
        //free(inverseXtranspose[i]);
    }

    for(i = 0; i < testNum; i++)
    {
        free(testMatrix[i]);
    }

    free(matrixX);
    free(matrixY);
    //free(inverseXtranspose);
    free(testMatrix);
    free(matrixTranspose);
    free(matrixMultiplication);
    free(augmented);
    free(weight);

    return 0;
}