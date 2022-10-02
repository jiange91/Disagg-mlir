#include "stdio.h"
#include "stdint.h"
#include "stdlib.h"
#include "inc/rmem.inc.h"

typedef struct A {
  int x;
  int y;
} A;

A *as;
cache_token_t ras;

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  as = malloc(sizeof(*as) * n);
  for (int i = 0; i < n; i++) {
    // A *index = NULL;
    // A *ai = (A*) ((char *)as + (uint64_t)(index+i));
    A v;
    v.x = i; v.y = i * i;
    as[i] = v;
  }

  for (int i = 0; i < n; i++) {
    printf("%d = %d * %d\n", as[i].y, as[i].x, as[i].x);
  }

  // ras.tag = 0;
  // ras.line_ofst = 10;
  // ras.head_addr = 10086;
  // ras.cache = 0;
  // printf("%llu\n", ras.tag);
  // printf("%lu\n", sizeof(ras));
  return 0;
}