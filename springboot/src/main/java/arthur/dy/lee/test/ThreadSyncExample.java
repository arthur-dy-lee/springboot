package arthur.dy.lee.test;

public class ThreadSyncExample {
    private int a = 0;
    private final Object lock = new Object();

    public void increment() {
        synchronized (lock) {
            a++;
        }
    }

    public static void main(String[] args) throws InterruptedException {
        final ThreadSyncExample example = new ThreadSyncExample();
        Thread[] threads = new Thread[50];

        for (int i = 0; i < 50; i++) {
            threads[i] = new Thread(() -> {
                example.increment();
            });
            threads[i].start();
        }

        for (int i = 0; i < 50; i++) {
            threads[i].join();
        }

        System.out.println("Final value of a: " + example.a);
    }
}
