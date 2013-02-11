#include <stdio.h>

typedef struct { char some_chr; char some_other_chr; } SomeStruct;

int main() {
  unsigned int struct_size;
  int *pointer_to_struct;
  SomeStruct analyze_this;

  struct_size = sizeof(analyze_this);
  pointer_to_struct = &analyze_this;

  printf(" -- struct(analyze_this) size: %d \n", struct_size);

  print_hex_bytes_from_sequence(pointer_to_struct, sizeof(analyze_this));
}

void print_hex_bytes_from_sequence(const char* c, unsigned int length) {
  unsigned int byte_from_struct;
  int i;

  for(i = 0; i < length; i++) {
    byte_from_struct = c[i];
    printf("%02X ", byte_from_struct);
  }

  printf("\n");
}
