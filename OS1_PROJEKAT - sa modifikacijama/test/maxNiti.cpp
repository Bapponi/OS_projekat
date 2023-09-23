//
// Created by os on 9/21/23.
//
//#include "maxNiti.hpp"
//#include "../h/syscall_c.h"
//
//#include "printing.hpp"
//
//static volatile int finished = 0;
//
//static void workerBody(void* arg) {
//    int id = thread_get_id();
//    for (uint64 i = 0; i < 5; i++) {
//        printString("Hello! ThreadId::");
//        printInt(id);
//        printString(" num: ");
//        printInt(i + 1);
//        printString("\n");
//        for (uint64 j = 0; j < 5000; j++) {
//            for (uint64 k = 0; k < 10000; k++) { /* busy wait */ }
//            thread_dispatch();
//        }
//    }
//    printString("Thread finished with id: ");
//    printInt(id);
//    printString("\n");
//    finished++;
//}
//
//void maxNiti(){
//
//    setMaxThreads(3);
//
//    thread_t threads[20];
//    for(int i = 0; i < 20; i++){
//        thread_create(&threads[i], workerBody, nullptr);
//        printString("Thread created with id: ");
//        printInt(i + 2);
//        printString("\n");
//    }
//
////    while(finished !=0){
////        thread_dispatch();
////    }
//    thread_join(threads[19]);
//
//}

#include "maxNiti.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

static volatile int finished = 0;

class Worker: public Thread {
    void workerBody(void* arg);
public:
    Worker():Thread() {}

    void run() override {
        workerBody(nullptr);
    }
};

void Worker::workerBody(void* arg) {
    int id = Thread::getThreadId();
    for (uint64 i = 0; i < 5; i++) {
        printString("Hello! ThreadId::");
        printInt(id);
        printString(" num: ");
        printInt(i + 1);
        printString("\n");
        for (uint64 j = 0; j < 5000; j++) {
            Thread::dispatch();
            for (uint64 k = 0; k < 10000; k++);
//            { /* busy wait */ }
        }
    }
    printString("Thread finished with id: ");
    printInt(id);
    printString("\n");
    finished++;
}

void maxNiti(){

    Thread::setMaxThreadsT(3);
//    setMaxThreads(3);
//    thread_t threads[20];
//    for(int i = 0; i < 20; i++){
//        thread_create(&threads[i], workerBody, nullptr);
//        printString("Thread created with id: ");
//        printInt(i + 2);
//        printString("\n");
//    }
//
//    thread_join(threads[19]);

    Thread* threads[20];

    for(int i=0; i<20; i++) {
        threads[i] = new Worker();
    }

    for(int i=0; i<20; i++) {
        threads[i]->start();
        printString("Thread created with id: ");
        printInt(i + 2);
        printString("\n");
    }

    threads[19]->join();

    for (auto thread: threads) { delete thread; }

}