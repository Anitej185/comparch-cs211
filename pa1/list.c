#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

struct node
{
    int data;
    struct node *next;
};

int count = 0;

void free_list(struct node *head)
{
    struct node *temp_head;
    while (head != NULL)
    {
        temp_head = head;
        head = head->next;
        free(temp_head);
    }
}

struct node *createNode(int data)
{
    struct node *newNode = (struct node *)malloc(sizeof(struct node));
    if (newNode == NULL)
    {
        exit(0);
    }
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

void insertSorted(struct node **head, struct node *key)
{
    //in the beginning of the list
    if ((*head) == NULL)
    {
        (*head) = key; //(struct node *) malloc(sizeof(struct node));
                       //        (*head)->next = NULL;
                       //        (*head)->data=key->data;
        count++;
    }
    else if (key->data < (*head)->data)
    {
        key->next = (*head);
        *head = key;
        count++;
    }
    else if (key->data == (*head)->data)
    {
        free_list(key);
        return;
    }
    else
    {
        struct node *temp = *head, *node;
        while (temp && temp->data < key->data)
        {
            node = temp;
            temp = temp->next;
        }

        //        struct node *n = key;//(struct node *) malloc(sizeof(struct node));
        //        n->data = key->data;
        //        n->next = temp->next;
        //        temp->next = n;
        if (node->next != NULL && node->next->data == key->data)
        {
            free_list(key);
            return;
        }
        else
        {
            key->next = node->next;
            node->next = key;
            count++;
        }
    }
}

void delete (struct node **(head), int item)
{
    if (*head == NULL)
    {
        count = 0;
        return;
    }
    else if ((*head)->data == item)
    {
        struct node *temp = *head;
        *head = (*head)->next;
        free(temp);
        count--;
    }
    else
    {
        struct node *temp = *head, *prev;

        while (temp && temp->data != item)
        {
            prev = temp;
            temp = temp->next;
        }
        if (temp)
        {
            prev->next = temp->next;
            free(temp);
            count--;
        }
    }
}

//printing the nodes
void print(struct node *ptr)
{
    if (ptr == NULL)
    {
        return;
    }
    else
    {
        printf("%d : ", count);
        while (ptr != NULL)
        {
            if (ptr->next == NULL)
            {
                printf("%d", ptr->data);
            }
            else
            {
                printf("%d ", ptr->data);
            }

            ptr = ptr->next;
        }
        printf("\n");
    }
    return;
}

int main(int argc, char *argv[])
{
    char c;
    int num;
    //create front of list
    struct node *list = NULL;
    struct node *n = NULL;
    //FILE *file;
    //file = fopen(argv[1], "r");
    //    int count = 3;
    //    if(argc < count)
    //    {
    //        exit(0);
    //    }
    //    char c = (argv[1][0]);
    //    int num = atoi(argv[2]);
    //	list= createNode(num);
    //            insertSorted(&list, list);
    //		print(list);

    /*    while(!feof(file))
    {
      fscanf(file, "%c %d\n", &c, &num);
*/

    while (scanf("%c%d", &c, &num) != EOF)
    {
        //read(0, stdin, )
        //scanf("%c%d", &c, &num);
        if (c == 'i')
        {
            n = createNode(num);
            insertSorted(&list, n);
            //count++;
            print(list);
        }

        //delete
        if (c == 'd')
        {
            delete (&list, num);
            // count--;
            if (count <= 0)
            {
                printf("0 :\n");
                count = 0;
            }
            else
            {
                print(list);
            }
        }
    }
    free_list(list);
    //fclose(file);
    return 0;
}
