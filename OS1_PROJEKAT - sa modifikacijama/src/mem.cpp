#include "../h/mem.h"

MEM::FullSpace* MEM::fullHead = nullptr;
MEM::FreeSpace* MEM::freeHead = nullptr;

void MEM::init(){
    freeHead = (FreeSpace*)HEAP_START_ADDR;

    freeHead->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    freeHead->prev = nullptr;
    freeHead->next = nullptr;

    MEM::memAlloc((sizeof(MEM) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}

void *MEM::memAlloc(size_t size) {

    if (size <= 0)
        return nullptr;

    size_t neededSize = size * MEM_BLOCK_SIZE;
    FreeSpace* freeSpace = freeHead;

    while(freeSpace != nullptr){
        if(freeSpace->size < neededSize){
            freeSpace = freeSpace->next;
            continue;
        }
        //ako ostane dovoljno mali prostor koji se nikada ne bi koristio leftover
        else if(freeSpace->size  < (neededSize + sizeof(FreeSpace))){

            if(freeSpace->prev)
                freeSpace->prev->next = freeSpace->next;
            else
                freeHead = freeSpace->next;

            if(freeSpace->next)
                freeSpace->next->prev = freeSpace->prev;
        }
        else{

            //ostatak koji nije iskoriscen prevezati u slobodni segment
            auto* leftover = (FreeSpace*)(neededSize + (char*)freeSpace);
            leftover->prev = freeSpace->prev;
            leftover->next = freeSpace->next;
            leftover->size = freeSpace->size - neededSize;

            //skidanje referenci sa novozauzete memorije
            if(freeSpace->prev)
                freeSpace->prev->next = leftover;
            else
                freeHead = leftover;

            if(freeSpace->next)
                freeSpace->next->prev = leftover;
        }

        //dolazak u punoj memoriji do elementa nakon kog treba da se uveze novi elem
        FullSpace* fullSpace = nullptr;
        if (fullHead && (char*)freeSpace >= (char*)fullHead) {

            fullSpace = fullHead;
            while(fullSpace->next != nullptr && (char *)freeSpace > (char *)(fullSpace->next)){
                fullSpace = fullSpace->next;
            }
        }

        //uvezivanje novog elementa
        auto* newFull = (FullSpace*)freeSpace;
        newFull->size = neededSize;
        newFull->prev = fullSpace;

        if (fullSpace)
            newFull->next = fullSpace->next;
        else
            newFull->next = fullHead;

        if(newFull->next)
            newFull->next->prev = newFull;

        if (fullSpace)
            fullSpace->next = newFull;
        else
            fullHead = newFull;

        return (void*)(headerSize + (char*)newFull);
    }
    return nullptr;
}

int MEM::memFree(void *address) {

    if (address == nullptr)
        return -1;

    //dolazak do nase adrese koja mora da bude pocetak segmenta
    address = (void*)((char*)address - headerSize);
    FullSpace* fullSpace = fullHead;
    auto* addressSegment = (FullSpace*)address;
    bool isStartOfSegment = false;

    while(fullSpace && addressSegment>=fullSpace){
        if(fullSpace == addressSegment) {
            isStartOfSegment = true;
            break;
        }
        fullSpace = fullSpace->next;
    }

    if (!isStartOfSegment)
        return -1;
    else
        addressSegment = fullSpace;

    //odvezivanje tog segmenta
    if (addressSegment->prev)
        addressSegment->prev->next = addressSegment->next;
    else
        fullHead = addressSegment->next;

    if (addressSegment->next)
        addressSegment->next->prev = addressSegment->prev;

    //trazenje gde da se smesti u slobodnim segmentima
    FreeSpace* freeSpace = freeHead;
    while(freeSpace->next != nullptr && (char*)address > (char*)(freeSpace->next)){
        freeSpace = freeSpace->next;
    }

    //try toJoin sa onim pre njega
    if((char*)freeSpace + freeSpace->size == address){
        freeSpace->size += addressSegment->size;
        if (freeSpace->next && (char*)((char*)freeSpace + freeSpace->size) == (char*)(freeSpace->next)){

            freeSpace->size += freeSpace->next->size;
            freeSpace->next = freeSpace->next->next;

            if (freeSpace->next)
                freeSpace->next->prev = freeSpace;
        }
        return 0;

    } else { //tryToJoin sa onim posle njega

        FreeSpace *nextSegment = freeSpace->next;

        auto *newSegment = (FreeSpace *) address;
        newSegment->size = addressSegment->size;
        if(nextSegment && tryToJoin(newSegment, nextSegment))
            return 0;
        else{
            //uvezivanje sa ostatkom
            newSegment->prev = freeSpace;
            newSegment->next = freeSpace->next;

            if (newSegment->next)
                newSegment->next->prev = newSegment;

            freeSpace->next = newSegment;

            return 0;
        }
    }
}


//ovo se moglo bolje implementirati
int MEM::tryToJoin(FreeSpace *firstSegment, FreeSpace* secondSegment){
    if((char*)firstSegment + firstSegment->size == (char*)secondSegment){

        firstSegment->size += secondSegment->size;
        firstSegment->prev = secondSegment->prev;
        firstSegment->next = secondSegment->next;

        if (secondSegment->prev)
            secondSegment->prev->next = firstSegment;
        else
            freeHead = firstSegment;

        if (secondSegment->next)
            secondSegment->next->prev = firstSegment;

        return 1;
    }
    return 0;
}
