#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
  int v;
} Node;

typedef struct A {
  Node n;
  struct A *next;
} A;

A **glob;

A *expand(A* node, int v) {
  A* new_node = (A*)malloc(sizeof(A));
  new_node->n.v = v;
  new_node->next = NULL;

  node->next = new_node;
  return new_node;
}

void visit(A *head) {
  A *hn = (A*) ((char *)head + sizeof(A));
  printf("struct chasing\n");
  while (head) {
    printf("%d\n", hn->n.v);
    head = head->next;
  }
}

void visit_glob(int n) {
  printf("array chaing\n");
  for (int i = 0; i < n; i++) {
    printf("%d\n", glob[i]->n.v);
  }
}

int main(int argc, char **argv) {
  A head;
  int n = atoi(argv[1]);
  glob = malloc(sizeof(A*) * n);
  A *prev = &head;
  for (int i = 0; i < n; ++i) {
    A *an = expand(prev, i);
    glob[i] = an;
    prev = an;
  }

  visit(head.next);
  visit_glob(n);
  return 0;
}