#include "stdlib.h"
#include "stdio.h"
#include "stdint.h"

typedef struct MinHeapNode
{
  double dist;
  int v;
} MinHeapNode;

#define heap_last(heap) (heap->array[heap->size - 1])
#define heap_idx(heap,idx) ((heap)->array[(idx)])
#define parent_idx(i) ((i-1) / 2)
#define left_child(i) ((i << 1) + 1)
#define right_child(i) ((i << 1) + 2)
#define is_heap_empty(heap) ((heap)->size == 0)
#define heap_contains(heap, v) ((heap)->pos[(v)] < (heap)->size)

typedef struct MinHeap
{
  struct MinHeapNode **array;
  int size;
  int capacity;
  int *pos;
} MinHeap;

struct MinHeapNode* new_heap_node(int v, double dist)
{
  MinHeapNode *n = malloc(sizeof(*n));
  n->v = v;
  n->dist = dist;
  return n;
}

struct MinHeap *init_min_heap(int capacity)
{
  MinHeap *heap = malloc(sizeof(*heap));
  heap->pos = malloc(sizeof(int) * capacity);
  heap->size = 0;
  heap->capacity = capacity;
  heap->array = malloc(sizeof(MinHeapNode *) * capacity);
  return heap;
}

void swap_heap_node(MinHeapNode **a, MinHeapNode **b)
{
  MinHeapNode *t = *a;
  *a = *b;
  *b = t;
}

void heapify(MinHeap *heap, int idx)
{
  int min, left, right;
  min = idx;
  left = left_child(idx);
  right = right_child(idx);

  if (left < heap->size && heap->array[left]->dist < heap->array[min]->dist)
    min = left;
  if (right < heap->size && heap->array[right]->dist < heap->array[min]->dist)
    min = right;
  
  if (min != idx)
  {
    MinHeapNode *min_node = heap->array[min];
    MinHeapNode *idx_node = heap->array[idx];

    heap->pos[min_node->v] = idx;
    heap->pos[idx_node->v] = min;

    swap_heap_node(&heap->array[min], &heap->array[idx]);
    heapify(heap, min);
  }
}

MinHeapNode* extract_min(MinHeap *heap)
{
  if (is_heap_empty(heap)) return NULL;
  MinHeapNode *root = heap->array[0];

  // replace with last node
  MinHeapNode *last = heap_last(heap);
  heap->array[0] = last;

  // update position of last node
  heap->pos[root->v] = heap->size - 1;
  heap->pos[last->v] = 0;

  // heapify
  heap->size --;
  heapify(heap, 0);
  return root;
}

// reset dist value of a given vertex
void decrease_key(MinHeap *heap, int v, double dist)
{
  int i = heap->pos[v];
  heap->array[i]->dist = dist;

  while (i && heap->array[i]->dist < heap->array[parent_idx(i)]->dist)
  {
    heap->pos[heap->array[i]->v] = parent_idx(i);
    heap->pos[heap->array[parent_idx(i)]->v] = i;
    swap_heap_node(&heap->array[i], &heap->array[parent_idx(i)]);
    i = parent_idx(i);
  }
}

int main() {
  MinHeap *h = init_min_heap(10);
  for (int i = 0; i < 10; ++ i) {
    h->array[i] = new_heap_node(i, 99.9);
    h->pos[i] = i;
  }
  for (int i = parent_idx(9); i > -1; --i) 
    heapify(h, i);
  while (h->size) {
    MinHeapNode *n = extract_min(h);
    printf("%d-%f\n", n->v, n->dist);
  }
  return 0;
}