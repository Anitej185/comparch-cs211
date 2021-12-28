#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct line
{
    int data, number;
    unsigned long int tag;
} line;

typedef struct set
{
    struct line *arr;
} set;

typedef struct cache
{
    struct set *arr1;
} cache;

void fill(struct cache *originalCache, int setInd, int blockInd, int value, unsigned long int tag, int number)
{
    originalCache->arr1[setInd].arr[blockInd].number = number;
    originalCache->arr1[setInd].arr[blockInd].data = value;
    originalCache->arr1[setInd].arr[blockInd].tag = tag;
}

//policy = 1 if lru, if "fifo" then policy = 0
/*
int policyEquals(char *policy)
{
    if (strcmp(policy, "lru") == 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
*/

//helper method to find the smallest index
int helperInd(struct cache *originalCache, int linesPerSet, int indBits)
{
    int minInd, a = 0;
    int min = originalCache->arr1[indBits].arr[0].number;

    for (; a < linesPerSet; a++)
    {
        if (min >= originalCache->arr1[indBits].arr[a].number)
        {
            min = originalCache->arr1[indBits].arr[a].number;
            minInd = a;
        }
    }
    return minInd;
}

//method to search
long total = 0;
int simCache(struct cache *originalCache, char *cachePolicy, char *cacheType, int linesPerSet, int indBits, unsigned long int tagBits)
{
    int i = 0;
    for (; i < linesPerSet; i++)
    {
        if (originalCache->arr1[indBits].arr[i].data < 0 || originalCache->arr1[indBits].arr[i].data > 0)
        {
            bool checkData = originalCache->arr1[indBits].arr[i].data == 1;
            if (checkData)
            {
                if (originalCache->arr1[indBits].arr[i].tag != tagBits)
                {
                    if (i == (linesPerSet - 1))
                    {
                        total++;
                        if (strcmp(cachePolicy, "direct"))
                        {
                            int minInd = helperInd(originalCache, linesPerSet, indBits);
                            fill(originalCache, indBits, minInd, 1, tagBits, total);
                            return 0;
                        }
                        else
                        {
                            fill(originalCache, indBits, i, 1, tagBits, total);
                            return 0;
                        }
                    }
                }
                else
                {
                    if (strcmp(cachePolicy, "lru"))
                    {
                        return 1;
                    }
                    total++;
                    originalCache->arr1[indBits].arr[i].number = total;
                    return 1;
                }
            }
        }
        else
        {
            total++;
            fill(originalCache, indBits, i, 1, tagBits, total);
            return 0;
        }
    }
    return 0;
}

int prefetchReads = 0; //number of prefetch reads
void alterPrefetch(struct cache *prefetchCache, char *cachePolicy, char *cacheType, int linesPerSet, int prefetchIndBits, unsigned long int prefetchTag)
{
    int i = 0;
    for (; i < linesPerSet; i++)
    {
        if (prefetchCache->arr1[prefetchIndBits].arr[i].data < 0 || prefetchCache->arr1[prefetchIndBits].arr[i].data > 0)
        {
            bool checkData1 = (prefetchCache->arr1[prefetchIndBits].arr[i].data == 1);
            if (checkData1)
            {
                if (prefetchCache->arr1[prefetchIndBits].arr[i].tag != prefetchTag)
                {
                    if (i == (linesPerSet - 1))
                    {
                        total++;
                        if (strcmp(cacheType, "direct"))
                        {
                            int minInd = helperInd(prefetchCache, linesPerSet, prefetchIndBits);
                            fill(prefetchCache, prefetchIndBits, minInd, 1, prefetchTag, total);
                            prefetchReads++;
                            return;
                        }
                        else
                        {
                            fill(prefetchCache, prefetchIndBits, i, 1, prefetchTag, total);
                            prefetchReads++;
                            return;
                        }
                    }
                }
                else
                {
                    return;
                }
            }
        }
        else
        {
            total++;
            fill(prefetchCache, prefetchIndBits, i, 1, prefetchTag, total);
            prefetchReads++;
            return;
        }
    }
    return;
}

int prefetchCache(struct cache *preCache, char *cachePolicy, char *cacheType, int linesPerSet, int indBits, int prefetchIndBits, unsigned long int tag, unsigned long int prefetchTag)
{
    int i = 0;
    for (; i < linesPerSet; i++)
    {
        if (preCache->arr1[indBits].arr[i].data < 0 || preCache->arr1[indBits].arr[i].data > 0)
        {
            bool checkData2 = (preCache->arr1[indBits].arr[i].data == 1);
            if (checkData2)
            {
                if (preCache->arr1[indBits].arr[i].tag != tag)
                {
                    if (i == (linesPerSet - 1))
                    {
                        total++;
                        if (strcmp(cacheType, "direct"))
                        {
                            int minInd = helperInd(preCache, linesPerSet, indBits);
                            fill(preCache, indBits, minInd, 1, tag, total);
                            alterPrefetch(preCache, cachePolicy, cacheType, linesPerSet, prefetchIndBits, prefetchTag);
                            return 0;
                        }
                        else
                        {
                            fill(preCache, indBits, i, 1, tag, total);
                            alterPrefetch(preCache, cachePolicy, cacheType, linesPerSet, prefetchIndBits, prefetchTag);
                            return 0;
                        }
                    }
                }
                else
                {
                    if (strcmp(cachePolicy, "lru"))
                    {
                        return 1;
                    }
                    total++;
                    preCache->arr1[indBits].arr[i].number = total;
                    return 1;
                }
            }
        }
        else
        {
            total++;
            fill(preCache, indBits, i, 1, tag, total);
            alterPrefetch(preCache, cachePolicy, cacheType, linesPerSet, prefetchIndBits, prefetchTag);
            return 0;
        }
    }
    return 0;
}

//helper method to get the tag bits for both prefetch and non-prefetch
unsigned long int generateTagBits(unsigned long int ad1, int bBits, int iBits)
{
    return (ad1 >> (bBits + iBits));
}

//helper method to free the cache for both files(file, file1)
void free_cache(struct cache originalCache, int nSets)
{
    int i = 0;
    for (; i < nSets; i++)
    {
        free(originalCache.arr1[i].arr);
    }
    free(originalCache.arr1);
}

//find log of base 2
int lg2(unsigned int x)
{
    unsigned int lg = 0;

    if (x == 1)
    {
        return lg;
    }

    while (x > 1)
    {
        x >>= 1;
        //x = x / 2;
        lg++;
    }

    return lg;
}

//helper method to allocate cache for no prefetch and perfetch-cache
void allocate_cache(struct cache *originalCache, struct cache *prefetch_cache, int linesPerSet, int nSets)
{
    originalCache->arr1 = (struct set *)calloc(nSets, sizeof(struct set));
    for (int i = 0; i < nSets; i++)
    {
        originalCache->arr1[i].arr = (struct line *)calloc(linesPerSet, sizeof(struct line));
    }

    prefetch_cache->arr1 = (struct set *)calloc(nSets, sizeof(struct set));
    for (int i = 0; i < nSets; i++)
    {
        prefetch_cache->arr1[i].arr = (struct line *)calloc(linesPerSet, sizeof(struct line));
    }
}

//------variable declarations
int cacheSize;
char *cacheType;
char *cachePolicy;
int blockSize;
int nSets;
int linesPerSet;

char INPUT;
//for regular
int memReads = 0;
int memWrites = 0;
int cacheHits = 0;
int cacheMisses = 0;
//for prefetch -- prefetchReads already initialized at the top
int prefetchHits = 0;   //number of prefetch hits
int prefetchMisses = 0; //number of prefetch misses
int prefetchWrites = 0; //number of prefetch writes

int main(int argc, char **argv)
{
    if (argc != 6)
    {
        return 0;
    }

    //example of input: "./cachesim 512 direct fifo 8 trace0.txt"
    cacheSize = atoi(argv[1]);
    cacheType = argv[2];
    cachePolicy = argv[3];
    blockSize = atoi(argv[4]);

    //3 different cache types = fully associative, n-way associative, and direct
    if (strcmp(cacheType, "direct") == 0)
    {
        linesPerSet = 1;
        nSets = cacheSize / blockSize;
    }
    else if (strcmp(cacheType, "assoc") == 0)
    {
        linesPerSet = cacheSize / blockSize;
        nSets = 1;
    }
    else if (strncmp(cacheType, "assoc:", 6) == 0)
    {
        sscanf(cacheType, "assoc:%d", &linesPerSet);
        nSets = cacheSize / (blockSize * linesPerSet);
    }
    else
    {
        return 0;
    }

    //cache size, assoc n, and block size must be power of 2, otherwise exit
    if (lg2(cacheSize) == 0 || lg2(blockSize) == 0)
    {
        //printf("error: Cache Size, assoc n, and block size must be power of 2");
        return 0;
    }

    struct cache originalCache;
    struct cache prefetch_cache;
    allocate_cache(&originalCache, &prefetch_cache, linesPerSet, nSets);

    //------variable declarations
    int blockBits = lg2(blockSize);                       //number of block bits
    int indBits = lg2(nSets);                             //number of offset index bits
    unsigned long int prefetchBlockBits = lg2(blockSize); //number of block bits (with prefetch)
    unsigned long int prefetchIndBits = lg2(nSets);       //number of offset index bits (with prefetch)

    unsigned long int programCounter; // the program counter
    unsigned long int address;

    unsigned long int tBits;         // number of tag bits
    unsigned long int prefetchTBits; // number of prefetch tag bits

    unsigned long int mask = (1 << indBits) - 1;
    //--------

    FILE *file = fopen(argv[5], "r");
    if (file == NULL)
    {
        return 0;
    }

    FILE *file1 = NULL;
    if ((!strcmp(cachePolicy, "fifo")))
    {
        while (fscanf(file, "%lx: %c %lx\n", &programCounter, &INPUT, &address) == 3)
        {
            tBits = generateTagBits(address, blockBits, indBits);

            if (INPUT == 'R')
            {
                if ((simCache(&originalCache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask), tBits) != 0))
                {
                    cacheHits++;
                }
                else
                {
                    cacheMisses++;
                    memReads++;
                }
            }
            else if (INPUT == 'W')
            {
                if ((simCache(&originalCache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask), tBits) != 0))
                {
                    cacheHits++;
                    memWrites++;
                }
                else
                {
                    cacheMisses++;
                    memReads++;
                    memWrites++;
                }
            }
        }
        total = 0;
        /*
The output must have this form:
Prefetch 0
Memory reads: 168
Memory writes: 334
Cache hits: 832
Cache misses: 168
Prefetch 1
Memory reads: 345
Memory writes: 334
Cache hits: 827
Cache misses: 173
*/
        //without prefetch
        printf("Prefetch 0\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", memReads, memWrites, cacheHits, cacheMisses);

        file1 = fopen(argv[5], "r");

        if (file1 == NULL)
        {
            return 0;
        }

        while (fscanf(file1, "%lx: %c %lx\n", &programCounter, &INPUT, &address) == 3)
        {
            tBits = generateTagBits(address, blockBits, indBits);
            prefetchTBits = generateTagBits((address + blockSize), prefetchBlockBits, prefetchIndBits);

            if (INPUT == 'R')
            {
                if ((prefetchCache(&prefetch_cache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask),
                                   (((address + blockSize) >> prefetchBlockBits) & mask), tBits, prefetchTBits) != 0))
                {
                    prefetchHits++;
                }
                else
                {
                    prefetchMisses++;
                    prefetchReads++;
                }
            }
            else if (INPUT == 'W')
            {
                if ((prefetchCache(&prefetch_cache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask),
                                   (((address + blockSize) >> prefetchBlockBits) & mask), tBits, prefetchTBits) != 0))
                {
                    prefetchHits++;
                    prefetchWrites++;
                }
                else
                {
                    prefetchMisses++;
                    prefetchReads++;
                    prefetchWrites++;
                }
            }
        }
        //with prefetch
        printf("Prefetch 1\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", prefetchReads, prefetchWrites, prefetchHits, prefetchMisses);
    }
    if ((!strcmp(cachePolicy, "lru")))
    {
        while (fscanf(file, "%lx: %c %lx\n", &programCounter, &INPUT, &address) == 3)
        {
            tBits = generateTagBits(address, blockBits, indBits);

            if (INPUT == 'R')
            {
                if ((simCache(&originalCache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask), tBits) != 0))
                {
                    cacheHits++;
                }
                else
                {
                    cacheMisses++;
                    memReads++;
                }
            }
            else if (INPUT == 'W')
            {
                if ((simCache(&originalCache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask), tBits) != 0))
                {
                    cacheHits++;
                    memWrites++;
                }
                else
                {
                    cacheMisses++;
                    memReads++;
                    memWrites++;
                }
            }
        }
        total = 0;

        //without prefetch
        printf("Prefetch 0\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", memReads, memWrites, cacheHits, cacheMisses);

        file1 = fopen(argv[5], "r");

        if (file1 == NULL)
        {
            return 0;
        }

        while (fscanf(file1, "%lx: %c %lx\n", &programCounter, &INPUT, &address) == 3)
        {
            tBits = generateTagBits(address, blockBits, indBits);
            prefetchTBits = generateTagBits((address + blockSize), prefetchBlockBits, prefetchIndBits);

            if (INPUT == 'R')
            {
                if ((prefetchCache(&prefetch_cache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask),
                                   (((address + blockSize) >> prefetchBlockBits) & mask), tBits, prefetchTBits) != 0))
                {
                    prefetchHits++;
                }
                else
                {
                    prefetchMisses++;
                    prefetchReads++;
                }
            }
            else if (INPUT == 'W')
            {
                if ((prefetchCache(&prefetch_cache, cachePolicy, cacheType, linesPerSet, ((address >> blockBits) & mask),
                                   (((address + blockSize) >> prefetchBlockBits) & mask), tBits, prefetchTBits) != 0))
                {
                    prefetchHits++;
                    prefetchWrites++;
                }
                else
                {
                    prefetchMisses++;
                    prefetchReads++;
                    prefetchWrites++;
                }
            }
        }
        //with prefetch
        printf("Prefetch 1\nMemory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", prefetchReads, prefetchWrites, prefetchHits, prefetchMisses);
    }
    free_cache(prefetch_cache, nSets);
    free_cache(originalCache, nSets);

    fclose(file);
    fclose(file1);

    return 0;
}