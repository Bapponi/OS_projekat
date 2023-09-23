#ifndef SCHEDULER
#define SCHEDULER

#include "list.h"

//scheduler je preuzet sa 7ih vezbi

class TCB;

class Scheduler{

private:
    static List<TCB> readyThreadQueue;
    static int schSize;

public:
    static TCB *get();
    static void put(TCB *ccb);
    static int getSchSize();
};

#endif
