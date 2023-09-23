#include "../h/tcb.h"
#include "../h/riscv.h"

TCB *TCB::running = nullptr;
int TCB::maxThreadId = 0;
int TCB::maxThreads = 0;
List<TCB> *TCB::blocked = nullptr;

void TCB::setMaxThreads(int numOfThreads){
    maxThreads = numOfThreads;
}

int TCB::getThreadId() {
    TCB::dispatch();
    return threadId;
}

void TCB::ping(thread_t handle){
    handle->setPing(true);
}

//jos samo implementirati sistemski poziv za ping
void TCB::threadWrapper(){

    Riscv::popSppSpie();
    running->body(running->arg);
    if(TCB::running->pinged){
        int id = TCB::running->getThreadId();
        printString("Id ping-ovane niti je: ");
        printInt(id);
        printString("\n");
    }
    thread_exit();
}

TCB* TCB::createThread(Body body, void* arg, uint64* stack){
    return new TCB(body, arg, stack);
}

int TCB::threadExit(){

    if (TCB::running == nullptr ) return -1;
    running->setFinished(true);
    //za vracanje nazad svih niti koje su bile pre suspendovane za semafor koji je radio nad ovom niti
    while(running->suspended->getSize()) {
        Scheduler::put(running->suspended->removeFirst());
    }
    if(blocked->getSize() != 0 && Scheduler::getSchSize() < (TCB::maxThreads)){
        Scheduler::put(blocked->removeFirst());
    }

    TCB::dispatch();

    return 0;
}

void TCB::dispatch(){

    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

//    if(Scheduler::getSchSize() < (TCB::maxThreads - 1)){
//        Scheduler::put(blocked->removeFirst());
//    }

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadJoin(thread_t handle){

    if (running == nullptr || handle == nullptr)
        return;

    if (!handle->isFinished()) {
        handle->suspended->addLast(running);
        TCB* current = running;
        running = Scheduler::get();
        TCB::contextSwitch(&current->context,&running->context);
    }

}
