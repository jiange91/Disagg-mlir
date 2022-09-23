#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct A {
  int v;
  struct A *next;
} A;

A *expand(A* node, int v) {
  A* new_node = (A*)malloc(sizeof(A));
  new_node->v = v;
  new_node->next = NULL;

  node->next = new_node;
  return new_node;
}

void visit(A *head) {
  while (head) {
    printf("%d\n", head->v);
    head = head->next;
  }
}

int main(int argc, char **argv) {
  A *head = malloc(sizeof(A));
  int n = atoi(argv[1]);

  A *prev = head;
  for (int i = 0; i < n; ++i) {
    A *an = expand(prev, i);
    prev = an;
  }

  visit(head->next);
  return 0;
}