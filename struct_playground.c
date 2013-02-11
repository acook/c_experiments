#include <stdio.h>

typedef struct { char some_chr; char some_other_chr; } analyze_this;

int main() {
  unsigned char byte_from_struct;
  unsigned int struct_size;
  int *pointer_to_struct;

  struct_size = sizeof(analyze_this);
  pointer_to_struct = &analyze_this;

  printf(" -- struct(analyze_this) size: %d \n", struct_size);

  int i;
  for(i = 0; i < struct_size; i++) {
    printf("%02X ", pointer_to_struct[i]);
  }

  printf("\n");
}
