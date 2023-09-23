#ifndef SYSCALL_CPP
#define SYSCALL_CPP

#include "syscall_c.h"
#include "../lib/hw.h"

void *operator new(size_t n);
void *operator new[](size_t n);
void operator delete(void *p);
void operator delete[](void *p);
//void *operator new(size_t n){return mem_alloc(n);}
//void *operator new[](size_t n){return mem_alloc(n);}
//void operator delete(void *p) noexcept{mem_free(p);}
//void operator delete[](void *p) noexcept{mem_free(p);}

class Thread {
public:
    Thread(void (*body)(void *), void *arg);
    virtual ~Thread ();
    int start ();
    void join ();
    int getThreadId ();
    static void dispatch ();
    static int sleep (time_t);
    static void runWrapper(void* thread);

    static void setMaxThreadsT(int num);

protected:
    Thread ();
    virtual void run () {};

private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

//nisam implementirao sleep
/*class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};*/

class Console {
public:
    static char getc ();
    static void putc (char c);
};

#endif
