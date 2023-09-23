#include "../h/scheduler.h"

List<TCB> Scheduler::readyThreadQueue;
int Scheduler::schSize = 0;

int Scheduler::getSchSize(){
    return schSize;
}

TCB *Scheduler::get()
{
        schSize--;
        return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    schSize++;
    readyThreadQueue.addLast(ccb);
}