#include <stdio.h>

typedef struct {
  unsigned int value;
  unsigned int number;
} SomeStruct;

void print_hex_bytes_from_sequence(void *location, unsigned int length) {
  unsigned char *sequence = location;
  unsigned int i;

  for(i = 0; i < length; i++) {
    printf("%02X ", sequence[i]);
  }

  printf("\n");
}

int main() {
  unsigned int struct_size;
  char *pointer_to_struct;
  SomeStruct analyze_this = {100, 1000};

  struct_size = sizeof(analyze_this);

  printf(" -- struct(analyze_this) size: %d \n", struct_size);

  print_hex_bytes_from_sequence(&analyze_this, struct_size);
}

