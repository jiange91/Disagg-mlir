#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

extern void * _disagg_alloc(unsigned cache, size_t size);
extern unsigned cache_create(unsigned cache_size, unsigned cache_line_size);
extern __int128_t cache_request(uint64_t vaddr);
extern void * cache_access_mut(__int128_t *token);
extern void * cache_access(__int128_t *token);
extern void init_device();
extern void init_bufs();
extern void cache_init();
extern void shutdown_device();

typedef struct A {
  int x;
  int y;
} A;

A *as;

int main(int argc, char *argv[]) {
  /* disagg env init */
  init_device();
  init_bufs();
  cache_init();
  cache_create(64, 16);

  int n = atoi(argv[1]);
  as = _disagg_alloc(1, sizeof(*as) * n);
  for (int i = 0; i < n; i++) {
    __int128_t token = cache_request((uint64_t) (as + i));
    A *ai = (A *) cache_access_mut(&token);
    ai->x = i;
    ai->y = i * i;
  }

  for (int i = 0; i < n; i++) {
    __int128_t token = cache_request((uint64_t) (as + i));
    A *ai = (A *) cache_access(&token);
    printf("%d: %d = %d * %d\n",i, ai->y, ai->x, ai->x);
    // assert(ai->y == ai->x * ai->x);
  }

  shutdown_device();
  return 0;
}
