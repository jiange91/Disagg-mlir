#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct A {
  int x;
  int y;
} A;

A *as;

extern int disagg_virenvmain(int argc, char **argv, 
                             int (*origin_main)(int, char **));

int origin_main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  as = malloc(sizeof(*as) * n);
  for (int i = 0; i < n; i++) {
    as[i].x = i;
    as[i].y = i * i;
  }

  for (int i = 0; i < n; i++) {
    printf("%d = %d * %d\n", as[i].y, as[i].x, as[i].x);
  }
  return 0;
}

int main(int argc, char *argv[]) {
  return disagg_virenvmain(argc, argv, origin_main);
}