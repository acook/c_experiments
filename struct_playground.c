#include <stdio.h>

typedef struct { char* c; char b; } a;

int main()
{
    printf("sizeof(a) == %d", sizeof(a));
}