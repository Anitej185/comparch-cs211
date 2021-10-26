#include <stdio.h>
#include <string.h>
#include <ctype.h>


int main(int argc, char *argv[]) {
    // Write C code here


    //char str[] = "Yell";
    if (strlen(argv[1]) != 0)
    {
        for (int i = 0; i < strlen(argv[1]); i++)
        {
            if (islower(argv[1][i]))
            {
                argv[1][i] = argv[1][i] - 32;
            }
        }
        printf("%s%s", argv[1], "!!");
    }
    return 0;
}
