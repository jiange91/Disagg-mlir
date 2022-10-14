#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "disagg.h"


void * _disagg_alloc(unsigned cache, size_t size) {
  printf("Allocating memory from %d: %lu bytes\n", cache, size);
  return malloc(size);
}


void addr_test(intptr_t addr) {
  printf("Address: %lu\n", addr);
}