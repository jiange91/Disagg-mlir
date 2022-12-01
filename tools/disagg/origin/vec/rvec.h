#ifndef _RVECTOR_H_
#define _RVECTOR_H_

#include <cstdlib>
#include <vector>
#include <cstdint>
#include <cstring>

void * _disagg_alloc(unsigned cache, size_t size);
void * cache_access_mut(__int128_t *token);
__int128_t cache_request(uint64_t vaddr);

template <typename T>
struct rvector {
  T * head;
  T * end;
  T * tail;
};

template <typename T>
void remotelize(std::vector<T> &v) {
    rvector<T> * rv = (rvector<T> *) &v;
    size_t s = v.size();
    size_t c = v.capacity();

    // replace with remotelize code
    void * raddr = _disagg_alloc(2, sizeof(T) * c);

    __int128_t token = cache_request((uintptr_t) raddr);
    void * rdata = cache_access_mut(&token);

    memcpy(rdata, rv->head, c * sizeof(T));

    rv->head = (T *) (raddr);
    rv->end = rv->head + s;
    rv->tail = rv->head + c;
}

#endif