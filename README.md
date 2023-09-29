# OS_projekat

Odrađena je implementacija operativnog sistema u arhitekturi RISC V procesora kroz pravljenje CPP API, C API, C ABI i kernel nivoa izvršivanja. 
Omogućene su funkcionalnosti zvanja sistemskih poziva kroz sinhrono izvršavanje vektorskih prekida za:
1. MEMORIJU
   - void* mem_alloc(size_t size) - Alokacija kontinualne memorije
   - int mem_free (void*) - Dealokacija kontinualne memorije
2. NITI
   - int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) - Pravljenje niti
   - int thread_exit() - Gašenje niti
   - void thread_dispatch() - Menjanja konteksta niti
   - void thread_join (thread_t handle) - Join-ovanje niti
   - int get_thread_id() - Hvatanje jedinstvenog identifikatora niti (modifikacija)
   - void ping(thread_t handle) - Pingovanje niti (modifikacija)
   - void set_thread_max(int num) - Ograničavanje broja aktivnih niti (modifikacija)
3. SEMAFORE
   - int sem_open(sem_t* handle, unsigned init) - Kreiranje semafora
   - int sem_close(sem_t handle) - Gašenje semafora
   - int sem_wait (sem_t id) - Čekanje semafora
   - int sem_signal(sem_t id) - Signaliziranje semafora
4. KONZOLU
   - void putc(char c) - Stavljanje karaktera na konzolu
   - char getc() - Hvatanje karaktera sa konzole
