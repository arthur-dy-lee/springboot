package arthur.dy.lee.test;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

public class CountDownLatchExample {
    private AtomicInteger a = new AtomicInteger(0);
    private static final int THREAD_COUNT = 50;
    private CountDownLatch latch = new CountDownLatch(THREAD_COUNT);

    public void increment() {
        a.incrementAndGet(); // 使用AtomicInteger确保原子性操作
        latch.countDown(); // 完成任务后，减少计数
    }

    public static void main(String[] args) throws InterruptedException {
        CountDownLatchExample example = new CountDownLatchExample();

        for (int i = 0; i < THREAD_COUNT; i++) {
            new Thread(() -> {
                example.increment();
            }).start();
        }

        example.latch.await(); // 等待直到所有线程完成任务
        System.out.println("Final value of a: " + example.a);
    }
}
