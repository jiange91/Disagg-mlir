#include <vector>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

void isNUll(void *p) {
  if (p) {
    printf("not null\n");
  } else {
    printf("null\n");
  }
}

struct A {
  int a;
public:
  A() = default;
  A(int a): a(a) {}
};

struct B {
  double x[10];
  // double x;
  // int y;
};

struct C {
  struct i1 {
    int a;
    int b;
  } i1_t;
  B b;
};

int main(int argc, char **argv) {
  vector<int> a;
  a.reserve(16);
  int e = 1;
  a.push_back(e);
  printf("%d\n", a.size());
  for (int i = 0; i < a.size(); ++ i) {
    printf("%d\n", a[i]);
  }

  // int n = atoi(argv[1]);
  // int *t = new int(2);
  // printf("t = %d\n", *t);

  // int *ts = new int[n] { 1,2,3 } ;
  // for (int i = 0; i < 5; ++ i) {
  //   printf("ts = %d\n", ts[i]);
  // }

  // int tt = {n};
  // printf("tt = %d\n", tt);

  // int t2d[2][2] = { {1,2} };
  // for (int i = 0; i < 2; ++ i) {
  //   for (int j = 0; j < 2; ++ j) {
  //     printf("a2d = %d\n", t2d[i][j]);
  //   }
  // }

  // A a = {1};
  // printf("a = %d\n", a.a);

  // A *aa = new A(2);
  // printf("aa = %d\n", aa->a);

  // A saa[2] = {{1}};
  // printf("saa = %d\n", saa[0].a);

  // A *aaa = new A[n] {{1}, {2}, {3}};
  // for (int i = 0; i < n; ++ i) {
  //   printf("aaa = %d\n", aaa[i].a);
  // }

  // B *b = new B{};
  // C c = {
  //   .i1_t = {1,n},
  //   .b = {0} 
  // };


  // void *a = NULL;
  // void *b = nullptr;
  // nullptr_t c = nullptr;
  // nullptr_t d = NULL;
  // isNUll(a);
  // isNUll(b);
  // isNUll(c);
  // isNUll(d);

  return 0;
}