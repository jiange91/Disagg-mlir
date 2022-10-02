#include "stdint.h"

typedef struct cache_token_t {
    // key for pointer
    struct {
        uint64_t tag: 48; // addr = tag + line_ofst
        uint16_t line_ofst;
    };

    struct {
        uint64_t head_addr: 48;
        // uint8_t ver;
        uint16_t cache;
    };
    // valid bit
} cache_token_t;