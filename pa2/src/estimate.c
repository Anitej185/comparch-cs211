#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void print_mat(double **mat, int n_rows, int n_cols)
{
    for (int rows = 0; rows < n_rows; rows++)
    {
        for (int cols = 0; cols < n_cols; cols++)
        {
            printf("%.0f", mat[rows][cols]);
        }
        printf("\n");
    }
}
void free_mat(double **resultMatrix, int n_rows)
{
    for (int item1 = 0; item1 < n_rows; item1++)
    {
        free(resultMatrix[item1]);
    }
    free(resultMatrix);
}

double **getMatrix(int n_rows, int n_cols)
{
    double **newMat = (double **)malloc(n_rows * sizeof(double *));
    for (int i = 0; i < n_rows; i++)
    {
        newMat[i] = malloc(n_cols * sizeof(double));
    }
    return newMat;
}

double **getTranspose(double **matrix, int n_rows, int n_cols)
{
    double **tranMat = getMatrix(n_cols, n_rows);

    for (int j = 0; j < n_rows; j++)
    {
        for (int k = 0; k < n_cols; k++)
        {
            tranMat[k][j] = matrix[j][k];
        }
    }
    return tranMat;
}

double **getMultiplication(double **matrix1, double **matrix2, int r1, int c1, int r2, int c2)
{
    double **resultMatrix = getMatrix(r1, c2);

    for (int i = 0; i < r1; i++)
    {
        for (int j = 0; j < c2; j++)
        {
            resultMatrix[i][j] = 0.000000;

            for (int r = 0; r < c1; r++)
            {
                resultMatrix[i][j] += (matrix1[i][r] * matrix2[r][j]);
            }
        }
    }
    return resultMatrix;
}

double **identity(int n_rows, int n_cols)
{
    double **I = getMatrix(n_rows, n_cols);
    for (int i = 0; i < n_rows; i++)
    {
        for (int j = 0; j < n_cols; j++)
        {
            if (i == j)
            {
                I[i][j] = 1;
            }
            else
            {
                I[i][j] = 0;
            }
        }
    }
    return I;
}

double **getInverse(double **M, int n_rows, int n_cols)
{
    double **N = identity(n_rows, n_cols);

    int n = n_rows;

    for (int p = 0; p <= n - 1; p++)
    {
        double f = M[p][p];
        for (int a = 0; a < n; a++)
        {
            M[p][a] = M[p][a] / f;
        }

        for (int b = 0; b < n; b++)
        {
            N[p][b] = N[p][b] / f;
        }
        for (int i = p + 1; i <= n - 1; i++)
        {
            double f = M[i][p];
            for (int a = 0; a < n_cols; a++)
            {
                M[i][a] = M[i][a] - (f * M[p][a]);
            }
            //subtract Np × f from Ni

            for (int b = 0; b < n_cols; b++)
            {
                N[i][b] = N[i][b] - (N[p][b] * f);
            }
        }
    }

    for (int p = n - 1; p >= 0; p--)
    {
        for (int i = p - 1; i >= 0; i--)
        {
            double f = M[i][p];

            for (int a = 0; a < n_cols; a++)
            {
                M[i][a] = M[i][a] - (f * M[p][a]);
            }
            //subtract Np × f from Ni

            for (int b = 0; b < n_cols; b++)
            {
                N[i][b] = N[i][b] - (N[p][b] * f);
            }
        }
    }
    return N;
}

int main(int argc, char *argv[])
{
    // W = ((X^T X)^−1) * X^T Y

    // To find the inverse of X^T X, you will use a simplified form of Gauss-Jordan elimination.

    FILE *file;

    file = fopen(argv[1], "r");

    if (file == NULL)
    {
        printf("Error\n");
        return 0;
    }

    int houses = 0;
    int attributes = 0;
    char train[6];

    fscanf(file, "%5s", train);
    fscanf(file, "%d", &houses);     // number of columns;
    fscanf(file, "%d", &attributes); // number of rows;

    if (strcmp(train, "train") != 0)
    {
        return EXIT_FAILURE;
    }

    double **X = getMatrix(attributes, houses + 1);
    double **targetCol = getMatrix(attributes, 1);

    //PLUG IN original data in the matrix from file into a new 2-d array copy
    for (int row = 0; row < attributes; row++) // eg: houses 4
    {
        X[row][0] = 1;
        for (int col = 1; col <= houses + 1; col++)
        {
            if (col <= houses)
            {
                fscanf(file, "%lf", &(X[row][col]));
            }
            else
            {
                fscanf(file, "%lf", &(targetCol[row][0]));
            }
        }
    }
    //1. X^T
    double **xTrans = getTranspose(X, attributes, houses + 1); // house + 1 * attributes

    double **xTransX = getMultiplication(xTrans, X, houses + 1, attributes, attributes, houses + 1);
    double **InverseTransX = getInverse(xTransX, houses + 1, houses + 1);

    // //3. X^T*Y
    double **xTransY = getMultiplication(xTrans, targetCol, houses + 1, attributes, attributes, 1);

    // //4. W = (X^T * X)^-1 * (X^T*Y)
    double **weights = getMultiplication(InverseTransX, xTransY, houses + 1, houses + 1, houses + 1, 1);
    //print_mat(weights, houses + 1, 1);
    FILE *file1;

    file1 = fopen(argv[2], "r");

    if (file1 == NULL)
    {
        printf("Error\n");
        return EXIT_FAILURE;
    }

    int test_houses = 0;
    int test_attributes = 0;
    char test[6];

    fscanf(file1, "%5s", test);
    fscanf(file1, "%d", &test_houses);     // number of columns;
    fscanf(file1, "%d", &test_attributes); // number of rows;

    if (strcmp(test, "data") != 0)
    {
        return EXIT_FAILURE;
    }

    double **X_test = getMatrix(test_attributes, test_houses + 1);

    //PLUG IN original data in the matrix from file1 into a new 2-d array copy
    for (int row = 0; row < test_attributes; row++) // eg: houses 4
    {
        X_test[row][0] = 1.0;
        for (int col = 1; col <= test_houses + 1; col++)
        {
            if (col <= test_houses)
            {
                fscanf(file1, "%lf", &(X_test[row][col]));
            }
        }
    }
    // print_mat(X_test, test_attributes, test_houses + 1);

    double **y_test = getMultiplication(X_test, weights, test_attributes, test_houses + 1, houses + 1, 1);
    print_mat(y_test, test_attributes, 1);

    free_mat(y_test, test_attributes);
    free_mat(X_test, test_attributes);
    free_mat(weights, houses + 1);
    free_mat(xTransY, houses + 1);
    free_mat(InverseTransX, houses + 1);
    free_mat(xTransX, houses + 1);
    free_mat(xTrans, houses + 1);
    free_mat(targetCol, attributes);
    free_mat(X, attributes);

    fclose(file);
    fclose(file1);

    return EXIT_SUCCESS;
}