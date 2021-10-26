#include <stdio.h>
#include<string.h>
#include <stdlib.h>
#include <ctype.h>

int main(int argc, char ** argv)
{
    if(argc == 1){
        return EXIT_SUCCESS;
    }
    int size_of_str = (2 * (strlen(argv[1]) + 1));

    char* target_pointer = (char *) malloc((strlen(argv[1]) + 1) * sizeof(char));
    strcpy(target_pointer, argv[1]);
    if(target_pointer != NULL && target_pointer[0] == '\0'){
        printf("\n");
        free(target_pointer);
        return EXIT_SUCCESS;
    }

    char *compressed_string = (char *)malloc(size_of_str* sizeof(char));
    char *compressed_string_pointer = compressed_string;

    int count=1;

    for (int i = 0; i < strlen(target_pointer); i++)
    {
        if (isdigit(target_pointer[i]))
        {
            printf("error\n");    
	        exit(0);
	    }
        if (target_pointer[i] != target_pointer[i + 1])
        {
            int remaining_characters = snprintf(compressed_string_pointer, size_of_str, "%c%d", target_pointer[i], count);

            compressed_string_pointer += remaining_characters;
            size_of_str -= remaining_characters;

            count = 1;
        }
        else{
            count++;
        }
    }
    
    if(strlen(compressed_string) > strlen(target_pointer)){
        printf("%s\n", target_pointer);
    }
    else{
        printf("%s\n", compressed_string);
    }

    free(compressed_string);
    free(target_pointer);

    return 0;
}
