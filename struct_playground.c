#include <stdio.h>

typedef struct {
  unsigned int value;
  unsigned int number;
} SomeStruct;

int main() {
  unsigned int struct_size;
  void *pointer_to_struct;
  SomeStruct analyze_this = {.value = 100, .number = 1000};

  struct_size = sizeof(analyze_this);
  pointer_to_struct = &analyze_this;

  printf(" -- struct(analyze_this) size: %d \n", struct_size);

  print_hex_bytes_from_sequence(pointer_to_struct, struct_size);
}

void print_hex_bytes_from_sequence(const char* c, unsigned int length) {
  unsigned int byte_from_struct;
  int i;

  for(i = 0; i < length; i++) {
    c++;
    byte_from_struct = *c;
    printf("%02X ", byte_from_struct);
  }

  printf("\n");
}
