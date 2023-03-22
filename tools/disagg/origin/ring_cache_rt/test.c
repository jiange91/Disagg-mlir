#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void sync(size_t *r, size_t t);
size_t r;

int main() {
  size_t t = 0;
  for (int i = 0; i < 10; ++ i) {
    t += i;
    sync(&r, t);
  }

  return 0;
}