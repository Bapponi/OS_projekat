#ifndef _TCB
#define _TCB

#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/mem.h"
#include "../h/list.h"
#include "scheduler.h"
#include "../h/syscall_c.h"

class TCB{
public:

    static TCB *running;
    List<TCB> *suspended;
    static List<TCB> *blocked;
    using Body = void (*)(void*);

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Context context;

    void *operator new(size_t n){
//        return __mem_alloc(n);
//        return mem_alloc(n + sizeof(MEM::FullSpace));
        return MEM::memAlloc(n + sizeof(MEM::FullSpace));
    }
    void *operator new[](size_t n){
        //        return __mem_alloc(n);
//        return mem_alloc(n + sizeof(MEM::FullSpace));
        return MEM::memAlloc(n + sizeof(MEM::FullSpace));
    }
    void operator delete(void *p) noexcept{
//        mem_free(p);
        MEM::memFree(p);
    }
    void operator delete[](void *p) noexcept{
//        mem_free(p);
        MEM::memFree(p);
    }
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    void setFinished(bool value) {
            this->finished = value;
    }
    Context getContext() const { return context; }
    void setContext(Context context) { this->context = context; }
    bool getHasChildren() const { return hasChildren; }
    void setHasChildren(bool value) { hasChildren = value; }
    TCB *getParent() const { return parent;}
    void setParent(TCB *parent) {this->parent = parent; }
    int getThreadId();
    void setPing(bool ping) { this->pinged = ping;}
    bool isPinged() { return this->pinged;}
    void ping(thread_t handle);
    static void setMaxThreads(int numOfThreads = 5);

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static TCB *createThread(Body body, void* arg, uint64* stack);
    static int threadExit();
    static void threadJoin(thread_t handle);

private:

    friend class Riscv;

    Body body;
    void* arg;
    uint64 *stack;
    bool finished;
    bool hasChildren;
    TCB *parent;
    int threadId;
    static int maxThreadId;
    bool pinged;
    static int maxThreads;

    TCB(Body body, void* arg, uint64* stack){
        this->body = body;
        this->arg = arg;
        this->stack = stack;
        context.ra = (uint64) &threadWrapper;
        context.sp = (stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0);
        finished = false;
        hasChildren = false;
        parent = nullptr;
        suspended = new List<TCB>();
        if(threadId == 0) {
            blocked = new List<TCB>();
        }
        threadId = maxThreadId;
        maxThreadId++;
        pinged = false;

    }

    static void threadWrapper();
    static void dispatch();
};

#endif