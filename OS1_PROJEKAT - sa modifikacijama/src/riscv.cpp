#include "../h/riscv.h"
#include "../h/console.h"

//izbrisi ovo kasnije
thread_t Riscv::mainThread = nullptr;

//do ovde

void Riscv::popSppSpie() {
//    __asm__ volatile("csrw sepc, ra");
//    ms_sstatus(SSTATUS_SPP);
//    __asm__ volatile("sret");
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(1 << 8)); //iz kog korisnickog rezima je skoceno ovde
    __asm__ volatile ("csrw sepc, ra"); //upis toga gde treba program da se vrati nakon obrade sistemskog poziva
    __asm__ volatile ("sret"); //sam povratak
}

Console *console = new Console();

void Riscv::handleSupervisorTrap() {

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        //printString("RISCV: Usli smo u prekid\n");
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        volatile uint64 sys_call_id = 0;

        asm volatile("ld %0, 80(fp)":"=r"(sys_call_id));

        switch (sys_call_id) {
            case 0x01:

                size_t size_mem;
                // __asm__ volatile ("ld %[size_mem], 11 * 8(s0)": [size_mem] "=r"(size_mem));
                __asm__ volatile("ld s1, 11*8(fp)");
                __asm__ volatile("mv %0, s1": "=r"(size_mem));

                size_mem = size_mem * MEM_BLOCK_SIZE;

//                __mem_alloc(size_mem);
                MEM::memAlloc(size_mem);
                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x02:

                void *pointer;
                __asm__ volatile ("ld %[pointer], 11 * 8(fp)": [pointer] "=r"(pointer));

//                __mem_free(pointer);

                MEM::memFree(pointer);
                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x11: {

                thread_t *handle;
                __asm__ volatile ("ld %[handle], 11 * 8(fp)": [handle] "=r"(handle));
                TCB::Body body;
                __asm__ volatile ("ld %[body], 12 * 8(fp)": [body] "=r"(body));
                void *arg;
                __asm__ volatile ("ld %[arg], 13 * 8(fp)"   : [arg] "=r"(arg));
                uint64 *stack;
                __asm__ volatile ("ld %[stack], 14 * 8(fp)"   : [stack] "=r"(stack));

                int ret = 0;

                if (handle == nullptr || body == nullptr || stack == nullptr) ret = -1;
                else {
                    TCB* tcb = TCB::createThread(body, arg, stack);
                    if (tcb == nullptr) ret = -1;
                    else {
                        *handle = tcb;
                        if(TCB::maxThreads != 0){
//                            while(Scheduler::getSchSize() > (TCB::maxThreads - 1)){
//                                //napravi if i onda u njemu ubaci u listu
//                                //izvadi iz liste u dispatch-u ako je getSchSize TCB::maxThreads - 2
//                                TCB::dispatch();
//                            }
                            if(Scheduler::getSchSize() > (TCB::maxThreads - 1)){
//                                TCB::blocked->addFirst(*handle);
                                TCB::blocked->addLast(*handle);
                            }else{
                                Scheduler::put(tcb);
                            }
                        }else
                        //ovde sam ja pre bio dodao dispatch pa sam napravio problem
                        //probaj opet to da uradis da vidis da li bi se stvari ponovile
                        Scheduler::put(tcb); // sa ovim se startuje nit
                    }
                }
                __asm__ volatile("sd %0, 10*8(fp)"::"r"(ret));

                break;
            }
            case 0x12: //thread_exit

                TCB::threadExit();

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x13: //thread_dispach

                TCB::dispatch();
                break;
            case 0x14: //thread_join

                TCB *handle1;
                __asm__ volatile ("ld %[handle1], 11 * 8(fp)": [handle1] "=r"(handle1));

                TCB::threadJoin(handle1);
                break;
            case 0x15: //thread_get_id

                TCB::running->getThreadId();

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x16: //maxThreads

                int numOfThreads;
                __asm__ volatile ("ld %[numOfThreads], 11 * 8(fp)": [numOfThreads] "=r"(numOfThreads));

                TCB::setMaxThreads(numOfThreads);

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x21: {//sem_open

                sem_t *handle2;
                __asm__ volatile ("ld %[handle2], 11 * 8(fp)": [handle2] "=r"(handle2));
                unsigned init;
                __asm__ volatile ("ld %[init], 12 * 8(fp)": [init] "=r"(init));

                int ret = 0;

                if (handle2 == nullptr) ret = -1;
                else {
                    SEM::semOpen(handle2, init);
                    if (*handle2 == nullptr) ret = -1;
                }
                __asm__ volatile("sd %0, 10*8(fp)"::"r"(ret));

                break;
            }
            case 0x22: //sem_close

                sem_t handle3;
                __asm__ volatile ("ld %[handle3], 11 * 8(fp)": [handle3] "=r"(handle3));

                SEM::semClose(handle3);

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x23: //sem_wait

                sem_t id;
                __asm__ volatile ("ld %[id], 11 * 8(fp)": [id] "=r"(id));

                SEM::semWait(id);

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x24: //sem_signal

                sem_t id1;
                __asm__ volatile ("ld %[id1], 11 * 8(fp)": [id1] "=r"(id1));

                SEM::semSignal(id1);

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x31: //time_sleep

                break;
            case 0x41: //get

//                console->getChar();
                __getc();

                __asm__ volatile("sd a0, 10*8(fp)");
                break;
            case 0x42: //putc

                char c;
                __asm__ volatile ("ld %[c], 11 * 8(fp)": [c] "=r"(c));

//                console->putChar(c);
                __putc(c);
                break;
            default:
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else {

        const char *error = "SCAUSE: ";

        while (*error){
            putc(*error++);
        }

        putc('0' + scause);
        putc('\n');

        while(true) {
            //ako budem radio konzolu, ovde valja isprazniti bafer za ispis, da bih znao sta je puklo
        }
    }
}

void Riscv::handleTimerTrap() {
    mc_sip(SIP_SSIP);
}

void Riscv::handleConsoleTrap() {
    console_handler();
}