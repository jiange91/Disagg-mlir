#include <stdio.h>
#include <memory>
#include <string.h>

int main() {
  int *a = new int[10];
  int b[10] = {};
  memcpy(a, b, sizeof(b));
  for (int i = 0; i < 10; ++i) 
    printf("%d\n", a[i]);
  return 0;
}