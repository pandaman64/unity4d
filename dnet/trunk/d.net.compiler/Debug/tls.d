import System;
import System.Threading;
class Semaphore { bool go; }
__thread int i = 42;
Semaphore sem = new Semaphore;
void main() {
    void asyncWork() {
        while (true) {
            synchronized(sem) {
                if (sem.go) break;
            }
        }
        i = 13;
   }
   System.Threading.Thread t = new System.Threading.Thread(&asyncWork);
   t.Start();
   synchronized(sem) {
        sem.go = true;
   }
   t.Join();
   Console.WriteLine(i);
   assert(i == 42);
}
