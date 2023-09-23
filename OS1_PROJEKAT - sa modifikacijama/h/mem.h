#ifndef MEM_H
#define MEM_H

#include "../lib/hw.h"

class MEM {
public:

    struct FullSpace{
        size_t size;
        FullSpace* prev;
        FullSpace* next;
    };

    struct FreeSpace{
        size_t size;
        FreeSpace* prev;
        FreeSpace* next;
    };

    MEM(MEM &) = delete;
    MEM(const MEM&)=delete;
    MEM(MEM&&)=delete;

    static void init();
    static void* memAlloc(size_t size);
    static int memFree(void* address);
    static int tryToJoin(FreeSpace* firstSegment, FreeSpace* secondSegment);

private:
    MEM(){};

    static FullSpace* fullHead;
    static FreeSpace* freeHead;
    static const size_t headerSize = sizeof(FullSpace);
    static const size_t headerSizeFr = sizeof(FreeSpace);
};

#endif

