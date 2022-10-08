#include <stdio.h>
#include <stdint.h>
#include "disagg.h"

int disagg_virenvmain(int argc, char **argv, int (*origin_main)(int, char **)) {
  for (int i = 1; i < argc; i++) {
    printf("%d: %s\n", i, argv[i]);
  }
  return origin_main(argc, argv);
}