#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "workload.h"

void visit() {
  for (int i = 0; i < M_arc; ++ i) {
    arc[i].tail->payload[0] = arc[i].payload[0];
  }
}

int main () {
  setup();

  uint64_t start = microtime();
  visit();
  uint64_t end = microtime();

  printf("Exec time %.5f s\n", (end - start)/1e6);
  // check();
  return 0;
}