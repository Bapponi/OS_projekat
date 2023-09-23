#include "../h/console.h"

char Console::getChar() {

    SEM::semWait(items);
    char c = buffer[head];
    head= (head + 1) % capacity;
    size--;
    SEM::semSignal(spaces);

    return c;
}

void Console::putChar(char c) {

    SEM::semWait(spaces);
//    sem_wait(spaces);
    buffer[tail] = c;
    tail = (tail + 1) % capacity;
    size++;
//    sem_wait(items);
    SEM::semSignal(items);

}

char Console::systemGet() {

    sem_wait(items);
    char c = buffer[head++];
    head = head % capacity;
    size--;
    sem_signal(spaces);

    return c;
}