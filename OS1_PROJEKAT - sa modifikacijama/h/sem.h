#ifndef _SEM
#define _SEM

#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/list.h"
#include "../h/tcb.h"
#include "../h/syscall_c.h"


class SEM{
private:

    friend class TCB;

    int value;
    bool onHold;
    List<TCB> blocked;

protected:

    void block();
    void deblock();

public:

    void *operator new(size_t n){
//        return __mem_alloc(n);
//        return mem_alloc(sizeof(SEM) + sizeof(MEM::FullSpace));
        return MEM::memAlloc(sizeof(SEM) + sizeof(MEM::FullSpace));

    }
    void *operator new[](size_t n){
//        return __mem_alloc(n);
//        return mem_alloc(sizeof(SEM) + sizeof(MEM::FullSpace));
        return MEM::memAlloc(sizeof(SEM) + sizeof(MEM::FullSpace));
    }
    void operator delete(void *p) noexcept{
//        mem_free(p);
        MEM::memFree(p);
    }
    void operator delete[](void *p) noexcept{
//        mem_free(p);
        MEM::memFree(p);
    }

    SEM(int value) {
        this->value = value;
        this->onHold = false;
    }
    ~SEM() {}
    int getValue() { return value; }
    void setValue(int value) { this->value = value; }
    static sem_t semOpen(sem_t *handle, unsigned init);
    static int semClose(sem_t handle);
    static int semWait(sem_t id);
    static int semSignal(sem_t id);
//    int semOpen(sem_t* handle, unsigned init);
//    int semClose(sem_t handle);
//    int semWait(sem_t id);
//    int semSignal(sem_t id);

};

#endif
