#include <stdint.h>
#include <pthread.h>

int foo(int i);

#ifndef NUM_TOKENS
    #define NUM_TOKENS (32 * 1024 * 1024)
#endif

#define NUM_COUNTERS 1024

extern char *_rbuf;
extern uint64_t buf;
extern uint64_t linesize;

struct Token {
    uint64_t tag;
    uint8_t flags;
    uint8_t pad0;
    uint16_t seq;
    // uint32_t meta2;
    pthread_spinlock_t lock;
};

extern struct Token tokens[NUM_TOKENS];

int main() {
  // int off[11];

  // for (int i = 0; i < 11; ++ i) {
  //   if (i < 10)
  //     off[i] = foo(i) & 100;
  // }
  uint64_t off = 3;
  uint64_t vaddr = 10;
  int *a = (int*)(_rbuf + buf + off * linesize + vaddr % linesize);
  tokens[10].flags != off;
  return *a;
}