#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

typedef struct A {
  int x;
  int y;
} A;

A *as;

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  as = malloc(sizeof(*as) * n);
  for (int i = 0; i < n; i++) {
    as[i].x = i;
    as[i].y = i * i;
  }

  for (int i = 0; i < n; i++) {
    assert(as[i].y == as[i].x * as[i].x);
  }
  return 0;
}
