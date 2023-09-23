#include "modifikacija.hpp"
#include "../h/syscall_c.h"
#include "printing.hpp"
#include "../h/tcb.h"

static volatile bool finished = false;
static volatile int sum = 0;
static volatile int n;
static volatile int red = 0;
static volatile int **matrix;

//rad sa matricama

static void workerBody(void* arg) {
    for (int i = 0; i < n; i++) {
        sum += matrix[red][i];
    }
    printString("Thread finished!\n");
    red += 1;
}

void modifikacija(){
    printString("Uneti velicinu matrice!!! \n");
    n = getc() - '0';
    getc(); // Enter posle broja

    thread_t threads[n];

    matrix = (volatile int**)mem_alloc(n*sizeof(int*));

    for(int i = 0; i < n; i++){
        matrix[i] = (volatile int*)mem_alloc(n*sizeof (int));
        for(int j = 0; j < n; j++){
            matrix[i][j] = 10;
        }
    }

    for(int i = 0; i < n; i++){
        thread_create(&threads[i], workerBody, nullptr);
        printString("Thread created with number: ");
        printInt(i+1);
        printString("\n");
    }
    TCB::running->setPing(TCB::running);
    thread_dispatch();
    printString("Krajnja suma je: ");
    printInt(sum);
    printString("\n");
}