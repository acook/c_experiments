#include <stdio.h>

typedef struct { char* c; char b; } analyze_this;

int main() {
  unsigned char c;
  printf(" -- Struct.size: %d \n", sizeof(analyze_this));
}
