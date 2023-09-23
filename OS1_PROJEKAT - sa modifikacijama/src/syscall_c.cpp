#include "../h/syscall_c.h"
#include "../h/riscv.h"

void *mem_alloc(size_t size_mem) {
    uint64 b;

    size_t mod = size_mem % MEM_BLOCK_SIZE;
    size_mem = size_mem / MEM_BLOCK_SIZE + (mod ? 1 : 0);
    size_t opCode = 0x01;

    __asm__ volatile ("mv a1, %[size_mem]":: [size_mem] "r"(size_mem));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv a0, %[b]" : [b] "=r"(b));
    return (void*)b;
}

int mem_free(void *ptr) {
    int b;

    size_t opCode = 0x02;
    __asm__ volatile("mv a1, %0":: "r"(ptr));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
) {
    int b;

    size_t opCode = 0x11;
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    __asm__ volatile("mv a4, %0":: "r"(stack));
    __asm__ volatile("mv a3, %0":: "r"(arg));
    __asm__ volatile("mv a2, %0":: "r"(start_routine));
    __asm__ volatile("mv a1, %0":: "r"(handle));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
//    asm volatile("mv a3, a2");
//    asm volatile("mv a2, a1");
//    asm volatile("mv a1, a0");

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int thread_exit() {
    int b;

    size_t opCode = 0x12;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

void thread_dispatch() {

    size_t opCode = 0x13;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");
}

void thread_join(thread_t handle) {

    size_t opCode = 0x14;
    __asm__ volatile("mv a1, %0":: "r"(handle));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");
}

int thread_get_id() {
    int b;

    size_t opCode = 0x15;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

void setMaxThreads(int numOfThreads){

    size_t opCode = 0x16;
    __asm__ volatile("mv a1, %0":: "r"(numOfThreads));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");
}



int sem_open(sem_t *handle, unsigned int init) {
    int b;

    size_t opCode = 0x21;
    __asm__ volatile("mv a2, %0":: "r"(init));
    __asm__ volatile("mv a1, %0":: "r"(handle));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int sem_close(sem_t handle) {
    int b;

    size_t opCode = 0x22;
    __asm__ volatile("mv a1, %0":: "r"(handle));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int sem_wait(sem_t id) {
    int b;

    size_t opCode = 0x23;
    __asm__ volatile("mv a1, %0":: "r"(id));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int sem_signal(sem_t id) {
    int b;

    size_t opCode = 0x24;
    __asm__ volatile("mv a1, %0":: "r"(id));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}

int time_sleep(time_t){ //ovo nisam implementirao
    int b;

    asm volatile("mv a1, a0");
    asm volatile("li a0, 0x31");
    __asm__ volatile("ecall");

    __asm__ volatile("mv %[b], a0" : [b] "=r"(b));
    return b;
}


void putc(char c) {

    size_t opCode = 0x42;
    __asm__ volatile("mv a1, %0":: "r"(c));
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");
}

char getc() {
    char b;

    size_t opCode = 0x41;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));

    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    return b;
}
