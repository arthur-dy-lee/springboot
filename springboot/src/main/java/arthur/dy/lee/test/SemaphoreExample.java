package arthur.dy.lee.test;

import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicInteger;

public class SemaphoreExample {
    private AtomicInteger a = new AtomicInteger(0);
    private static final int THREAD_COUNT = 50;
    private Semaphore semaphore = new Semaphore(0);

    public void increment() {
        a.incrementAndGet(); // 使用AtomicInteger确保原子性操作
        semaphore.release(); // 完成任务后，释放一个许可
    }

    public static void main(String[] args) throws InterruptedException {
        SemaphoreExample example = new SemaphoreExample();

        for (int i = 0; i < THREAD_COUNT; i++) {
            new Thread(() -> {
                example.increment();
            }).start();
        }

        example.semaphore.acquire(THREAD_COUNT); // 等待直到所有线程释放许可
        System.out.println("Final value of a: " + example.a);
    }
}
