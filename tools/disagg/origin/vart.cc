#include <cstdio>

class A {
public:
    void trigger() {
        dispatch();
    }
    void dispatch() {
        printf("dispatch A\n");
    }
};

class B : public A {
public:
    void dispatch() {
        printf("dispatch B\n");
        A::dispatch();
    }
};

class C : public B {
public:
    void trigger() {
        dispatch();
    }
    void dispatch() {
        printf("dispatch C\n");
        B::dispatch();
    }
};


int main(int argc, char **argv) {
    C c;
    c.trigger();
    return 0;
}