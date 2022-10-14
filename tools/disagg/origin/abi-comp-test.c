#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct cache_token_t {
    // key for pointer
  uint64_t tag; // addr = tag + line_ofst
  uint64_t ser;
} cache_token_t;

extern void * _disagg_alloc(unsigned cache, size_t size);
extern unsigned cache_create(unsigned cache_size, unsigned cache_line_size, void * rbuf);
extern __int128_t cache_request(uint64_t vaddr);
extern void * cache_access_mut(__int128_t *token);
extern void * cache_access(__int128_t *token);
extern void init_device();
extern void init_bufs();
extern void cache_init();
extern void shutdown_device();
extern void *rbuf;

int main(int argc, char *argv[]) {
  /* disagg env init */
  init_device();
  init_bufs();
  cache_init();
  unsigned cache = cache_create(64, 16, rbuf);

  char *dat = _disagg_alloc(cache, sizeof(*dat));
  // printf("%lu\n", (intptr_t) dat);
  __int128_t token = cache_request((uint64_t) (dat));
  char *ai = (char *) cache_access_mut(&token);
  *ai = 'a';

  shutdown_device();
  return 0;
}
