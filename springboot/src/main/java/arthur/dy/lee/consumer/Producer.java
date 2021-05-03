package arthur.dy.lee.consumer;


import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

class Producer implements Runnable {
    private final BlockingQueue<Job> taskQueue;
    private Random random = new Random();

    public AtomicInteger count = new AtomicInteger(0);
    public int maxCount = 20;


    public Producer(BlockingQueue<Job> taskQueue) {
        super();
        this.taskQueue = taskQueue;
    }

    @Override
    public void run() {
        while (count.get() < maxCount) {
            int a = random.nextInt(100);
            if (a % 2 == 0) {
                taskQueue.add(new Job("string", String.valueOf(a * 100)));

            } else {
                int b = random.nextInt(100);
                int c = random.nextInt(100);
                taskQueue.add(new Job("int", b, c));
            }
            count.getAndIncrement();
            System.out.println(count.get());


        }

    }
}
