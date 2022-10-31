#include <stdio.h>
#include <memory>

int main() {
  int *a = new int;
  *a = 1;
  printf("%d\n", *a);
  return 0;
}