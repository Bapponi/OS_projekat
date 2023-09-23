#ifndef SYSCALL_C
#define SYSCALL_C

#include "../lib/hw.h"
#include "../lib/console.h"

//memorija
void* mem_alloc(size_t size);
int mem_free (void* ptr);

//niti
class TCB;
typedef TCB* thread_t;

int thread_create (thread_t* handle,
                   void(*start_routine)(void*), void* arg);
int thread_exit ();
void thread_dispatch ();
void thread_join(thread_t handle);
int thread_get_id();
void setMaxThreads(int numOfThreads);

//semafori
class SEM;
typedef SEM* sem_t;

int sem_open (sem_t* handle, unsigned init);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);

//uspavljivanje
typedef unsigned long time_t;
int time_sleep (time_t);

//konzola
const int EOF = -1;
char getc ();
void putc (char c);

#endif
