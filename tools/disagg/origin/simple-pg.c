#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

typedef struct A {
  int x;
  int y;
} A;

A a;

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  // as = malloc(sizeof(*as) * n);
  a.x = n;
  a.y = n + n;
  printf("%d %d\n", a.x, a.y);
  return 0;
}
