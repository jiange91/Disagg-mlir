#ifndef _VISIT_H_
#define _VISIT_H_

#include "def.h"
#include <stdio.h>
#include <string.h>

void setup();
void computation(arc_p a, node_p n, int i);

#define batched 0

// TODO: node_t and arc_t
void visit(arc_p as) {
#if batched
  for (int j = 0; j < n_blocks; j++ ) {
    arc_t *p = C2R::get_mut<arc_t>(arc + j * eles);
    for( int i = 0; i < eles; i++ ) {
      arc_t *arci = p + i;
      // node_t *node_tail = C1R::get_mut<node_t>(arci->tail);
      // arci->nextout = node_tail->firstout;
      // node_tail->firstout = arc + j * eles + i;
      // computation(arci, node_tail);
      // node_t *node_head = C1R::get_mut<node_t>(arci->head);
      // arci->nextin = node_head->firstin;
      // node_head->firstin = arc + j * eles + i;
      // computation(arci, node_head);
      int n = arci->head - node;
      g_payload[n & 23] = n;
    }
  }
#else
  for( int i = 0; i < M_arc; i++ ) {
    arc_t ai = as[i];
    int n = ai.head - node;
    g_payload[n & 23] = n;
  }
#endif
}

int main () {
  setup();
  printf("after setup\n");
  uint64_t start = microtime();
  visit(arc);
  uint64_t end = microtime();

  printf("Exec time %.5f s\n", (end - start)/1e6);
  printf("Dont opt this %d\n", g_payload[5]);
  return 0;
}

#endif