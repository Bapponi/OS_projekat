#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;

class WorkerTA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerTA():Thread() {}

    void run() override {
        workerBodyA(nullptr);
    }
};

class WorkerTB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerTB():Thread() {}

    void run() override {
        workerBodyB(nullptr);
    }
};

class WorkerTC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerTC():Thread() {}

    void run() override {
        workerBodyC(nullptr);
    }
};

void WorkerTA::workerBodyA(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        int a = thread_get_id();
        printString("Nit A sa id-em: "); printInt(a);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("A finished!\n");
    finishedA = true;
}

void WorkerTB::workerBodyB(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        int b = thread_get_id();
        printString("Nit B sa id-em: "); printInt(b);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
    finishedA = true;
}

void WorkerTC::workerBodyC(void *arg) {
    for (uint64 i = 0; i < 10; i++) {
        int c = thread_get_id();
        printString("Nit C sa id-em: "); printInt(c);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("C finished!\n");
    finishedA = true;
}

void Threads_ID_API_test() {
    Thread* threads[4];

    threads[0] = new WorkerTA();
    printString("ThreadA created\n");

    threads[1] = new WorkerTB();
    printString("ThreadB created\n");

    threads[2] = new WorkerTC();
    printString("ThreadC created\n");

    for(int i=0; i<3; i++) {
        threads[i]->start();
    }

    while (!(finishedA && finishedB && finishedC)) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
}