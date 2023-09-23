#ifndef _CONSOLE
#define _CONSOLE

#include "../h/sem.h"

//nisam stigao sve da implementiram
class Console{

    const int EOF = -1;

private:
    static int const capacity = 1024;
    int size, head, tail;
    char *buffer;
    SEM *spaces, *items;

public:
    void *operator new(size_t n) { return mem_alloc(n); }
    void *operator new[](size_t n) { return mem_alloc(n); }
    void operator delete(void *p) noexcept { mem_free(p); }
    void operator delete[](void *p) noexcept { mem_free(p); }
    Console(){
        this->size = 0;
        this->head = 0;
        this->tail = 0;
        buffer = new char[capacity];
        spaces = new SEM(capacity);
        items = new SEM(0);
    }
    ~Console(){
        delete buffer;
        delete spaces;
        delete items;
    }
    int getSize(){ return size; }
    void setSize(int size) { this->size = size; }
    char getChar();
    void putChar(char c);
    char systemGet();

};

#endif
