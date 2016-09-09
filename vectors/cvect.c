#include "stdio.h"

typedef int vec4d __attribute__ ((ext_vector_type(4)));

vec4d mult(vec4d v1, vec4d v2){
  return v1 * v2;
}

int main(){
  vec4d v3;
  int i;

  vec4d v1 = {1, 2, 3, 4};
  vec4d v2 = {7, 8, 9, 10};

  v3 = mult(v1,v2);

  i = v3.x;

  printf("result: %d", i);
}
