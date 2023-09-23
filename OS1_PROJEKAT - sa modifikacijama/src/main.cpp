#include "../h/tcb.h"
#include "../test/printing.hpp"
#include "../h/riscv.h"
#include "../h/syscall_c.h"

extern "C" void trap();
void userMain();

void wrapperUserMain(void *){
    userMain();
    //sem_signal(Riscv::mainSemaphore);
}

int main(){

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 1); //proveriti zasto jedan ovde
    MEM::init();
    TCB::running = TCB::createThread(nullptr,nullptr, nullptr);
    thread_create(&Riscv::mainThread, wrapperUserMain, nullptr);
    thread_join(Riscv::mainThread);
    delete TCB::running;

    return 0;
}
