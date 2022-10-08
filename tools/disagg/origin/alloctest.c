#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>


void origin_maain(int argc, char *argv[]) {
  printf("Origin main\n");
  for (int i = 1; i < argc; i++) {
    printf("%d: %s\n", i, argv[i]);
  }
}

void inspect(int argc, char *argv[], void (*origin_main)(int, char *[])) {
  for (int i = 1; i < argc; i++) {
    printf("%d: %s\n", i, argv[i]);
  }
  origin_main(argc-1, argv);
}

void main (int argc, char *argv[])
{
  inspect(argc, argv, origin_maain);
}
