#include <stdio.h>
#include <stdlib.h>

void free_mat(int **resultMatrix, int size)
{
    for (int item1 = 0; item1 < size; item1++)
    {
        free(resultMatrix[item1]);
    }
    free(resultMatrix);
}

int main(int argc, char *argv[])
{
    int exponent = 0;
    int count = 0;

    FILE *file;

    file = fopen(argv[1], "r");

    if (file == NULL || argc != 2)
    {
        printf("Error\n");
        return 0;
    }

    fscanf(file, "%d", &count);
    int i = 0;
    int j = 0;
    int **original = (int **)malloc(count * sizeof(int *));
    int **originalCopy = (int **)malloc(count * sizeof(int *));

    //memory allocation per element in the array
    for (int item = 0; item < count; item++)
    {
        original[item] = (int *)malloc(count * sizeof(int));
        originalCopy[item] = (int *)malloc(count * sizeof(int));
    }

    //PLUG IN original data in the matrix from file into a new 2-d array copy
    for (i = 0; i < count; i++)
    {
        for (j = 0; j < count; j++)
        {
            fscanf(file, "%d", &original[i][j]);
            originalCopy[i][j] = original[i][j];
        }
        //printf("\n");
    }

    //scanning the exponent value and doing matrix multiplication
    fscanf(file, "%d", &exponent);

    int **resultMatrix = (int **)malloc(count * sizeof(int *));

    for (int item1 = 0; item1 < count; item1++)
    {
        resultMatrix[item1] = (int *)malloc(count * sizeof(int *));
    }

    int r;

    for (int num = 1; num < exponent; num++)
    {
        for (i = 0; i < count; i++)
        {
            for (j = 0; j < count; j++)
            {
                resultMatrix[i][j] = 0;

                for (r = 0; r < count; r++)
                {
                    resultMatrix[i][j] += originalCopy[r][j] * original[i][r];
                }
            }
        }
        for (int q = 0; q < count; q++)
        {
            for (int p = 0; p < count; p++)
            {
                originalCopy[q][p] = resultMatrix[q][p];
            }
        }
    }

    //PRINT the values in the matrix
    for (int rows = 0; rows < count; rows++)
    {
        for (int cols = 0; cols < count; cols++)
        {
            if (cols == count - 1)
            {
                printf("%d", originalCopy[rows][cols]);
            }
            else
            {
                printf("%d ", originalCopy[rows][cols]);
            }
        }
        printf("\n");
    }
    free_mat(resultMatrix, count);
    free_mat(originalCopy, count);
    free_mat(original, count);

    fclose(file);
    return 0;
}
