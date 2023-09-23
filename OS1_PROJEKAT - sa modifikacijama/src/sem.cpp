#include "../h/sem.h"
#include "../h/riscv.h"

void SEM::block(){
    TCB* current = TCB::running;
    TCB* next = Scheduler::get();
    if(next != nullptr){
        blocked.addLast(current);
        TCB::running=next;
        TCB::contextSwitch(&current->context,&next->context);
    }
}

void SEM::deblock(){
    TCB* deblockedThread = blocked.removeFirst();
    Scheduler::put(deblockedThread);
}

sem_t SEM::semOpen(sem_t *handle, unsigned init){
    *handle = new SEM(init);
//    *handle = (SEM*)MEM::memAlloc((sizeof(SEM)+ sizeof(MEM::FullSpace));
    if(*handle) return *handle;
    else return nullptr;
}
int SEM::semClose(sem_t handle){ //nisam siguran da li dobro dealocira

    if(handle != nullptr){
        if(!handle->onHold){
            handle->onHold = true;
            handle->value = 0;
            int n = handle->blocked.getSize();
            for(int i=0;i<n;i++){
                TCB *element = handle->blocked.removeFirst();
                Scheduler::put(element);
            }
            MEM::memFree(handle);
            return 0;
        } else {
            return -1;
        }
    }else{
        return -1;
    }
}


int SEM::semWait(sem_t id){
    if(!id->onHold){
        id->value--;
        if(id->value<0){
            id->block();
        }
        return 0;
    }else{
        return -1;
    }
}

int SEM::semSignal(sem_t id){
    if(!id->onHold){
        id->value++;
        if(id->value <= 0){
            id->deblock();
        }
        return 0;
    }else{
        return -1;
    }
}