#include "../h/syscall_cpp.hpp"
#include "../h/tcb.h"

////////////////////TCB/////////////////////////

Thread::Thread(void (*body)(void *), void *arg): myHandle(0), body(body), arg(arg) { }

Thread::~Thread () {
//        if(this->myHandle){
//            if(this->myHandle->isFinished()){
//    thread_join(myHandle);
    thread_exit();
    mem_free(this);
//            }
//        }
}

Thread::Thread () {
    this->body = runWrapper;
    this->arg = this;
}

int Thread::start() {
    //ovo potencijalno izmeniti
    return thread_create(&myHandle, body, arg);
}

int Thread::getThreadId (){
    return thread_get_id();
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch () {
    thread_dispatch();
}

int Thread::sleep (time_t) {
    return 0;
}

void Thread::runWrapper(void* thread){
    Thread* thr = (Thread*) thread;
    thr->run();
}

void Thread::setMaxThreadsT(int num){
    setMaxThreads(num);
}


////////////////////SEM/////////////////////////

Semaphore::Semaphore (unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore () {
    if (myHandle != nullptr)
    {
        sem_close(myHandle);
        myHandle = nullptr;
    }
}

int Semaphore::wait () {
    if (myHandle != nullptr) {
        int ret = sem_wait(myHandle);
        return ret;
    }
    return -1;
}

int Semaphore::signal () {
    if (myHandle != nullptr) {
        int ret = sem_signal(myHandle);
        return ret;
    }
    return -1;
}

////////////////////CON/////////////////////////

char Console::getc () {
    return ::getc();
}

void Console::putc(char c){
    ::putc(c);
}
