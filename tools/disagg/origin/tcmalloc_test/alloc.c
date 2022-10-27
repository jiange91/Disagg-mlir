#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char ** argv) {
  // int n = atoi(argv[1]);
  srand(time(NULL));

  int *p[1024];
  // for (int i = 0; i < n; ++ i) {
  //   p[i] = malloc(1024);
  //   printf("%lu\n", (intptr_t)p[i]);
  // }
  // for (int i = 0; i < n; ++ i) {
  //   free(p[i]);
  // }
  // printf("--------\n");
  // for (int i = 0; i < n; ++ i) {
  //   p[i] = malloc(1024);
  //   printf("%lu\n", (intptr_t)p[i]);
  // }
  // for (int i = 0; i < n; ++ i) {
  //   free(p[i]);
  // }
  for (int i = 0; i < 1024; ++i) {
    p[i] = malloc((unsigned) 4 << 20);
    p[i][0] = i;
    printf("%p\n", p[i]);
  }

  while (1) {};

  for (int i = 0; i < 1024; ++i) {
    free(p[i]);
  }
  return 0;
}