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

void visit(int n) {
  A *head = glob[n];
  printf("struct chasing from %d\n", n);
  while (head) {
    printf("%d\n", head->n.v);
    head = head->next;
  }
}

int main(int argc, char **argv) {
  int l = atoi(argv[1]);
  int n = atoi(argv[2]);

  A head;
  glob = malloc(sizeof(A*) * l);
  A *prev = &head;
  for (int i = 0; i < l; ++i) {
    A *an = expand(prev, i);
    glob[i] = an;
    prev = an;
  }

  visit(n);
  return 0;
}