#ifndef WORKLOAD_H
#define WORKLOAD_H

#include <stdint.h>
#include <stdio.h>

typedef long flow_t;
typedef long cost_t;

typedef struct node node_t;
typedef struct node *node_p;

typedef struct arc arc_t;
typedef struct arc *arc_p;

struct node
{
  char payload[128];
};


struct arc
{
  node_p tail;
  char payload[56];
};

extern node_t *node;
extern arc_t *arc;


#define N_node (8 << 20)
#define M_arc (64 << 20)

static uint64_t seed = 0x23333;
static uint64_t checksum = 0xdeadbeaf;

int nextRand(int M);

void setup();
extern void visit();
// extern void check();

uint64_t microtime();


#endif
