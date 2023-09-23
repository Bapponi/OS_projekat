#include "../h/syscall_c.h"

//preuzeto sa vezbi

void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p)
{
    if (p != nullptr)
        mem_free(p);
}

void operator delete[](void *p)
{
    if (p != nullptr)
        mem_free(p);
}