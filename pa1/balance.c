#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
    // Checks for user input
    if (argc == 1)
    {
        return EXIT_SUCCESS;
    }

    char *target = argv[1];
    char *stack = malloc(strlen(target) * sizeof(char));
    int i = 0, top = -1;

    for (i = 0; target[i] != '\0'; i++)
    {
        char current_ongoing_character = target[i];
        if (current_ongoing_character == '(' || current_ongoing_character == '[' || current_ongoing_character == '{')
        {
            stack[++top] = current_ongoing_character;
        }
        else if (current_ongoing_character == ')' || current_ongoing_character == ']' || current_ongoing_character == '}')
        { // ')' = input, top=-1. top = -1;
            if (top == -1)
            {
                printf("%d: %c\n", i, current_ongoing_character);
                free(stack);
                return EXIT_FAILURE;
            }
            else
            {
                char opening_bracket = stack[top--];

                if (opening_bracket == '[' && (current_ongoing_character == '}' || current_ongoing_character == ')'))
                {
                    printf("%d: %c\n", i, current_ongoing_character);
                    free(stack);
                    return EXIT_FAILURE;
                    /*
                    
                    Input = '([)'

                    i = 0;
                    current_ongoing_character = '('
                    Stack = ['(']

                    i = 1;
                    current_ongoing_character = '['
                    Stack = ['(', '[']

                    i = 2;
                    current_ongoing_character = ')'
                    Stack = ['(']
                    opening_bracket =  '['


                    */
                }

                else if (opening_bracket == '(' && (current_ongoing_character == ']' || current_ongoing_character == '}'))
                {
                    printf("%d: %c\n", i, current_ongoing_character);
                    free(stack);
                    return EXIT_FAILURE;
                }
                else if (opening_bracket == '{' && (current_ongoing_character == ']' || current_ongoing_character == ')'))
                {
                    printf("%d: %c\n", i, current_ongoing_character);
                    free(stack);
                    return EXIT_FAILURE;
                }
            }
        }
    }

    // Stack is empty that means all brackets matched
    if (top == -1)
    {
        free(stack);
        return EXIT_SUCCESS;
    }
    else
    {
        printf("open: ");
        while (top != -1)
        {
            char opening_bracket = stack[top--];
            if (opening_bracket == '{')
            {
                printf("%c", '}');
            }
            if (opening_bracket == '(')
            {
                printf("%c", ')');
            }
            if (opening_bracket == '[')
            {
                printf("%c", ']');
            }
        }
        printf("\n");
    }
    free(stack);
    return EXIT_FAILURE;
}
