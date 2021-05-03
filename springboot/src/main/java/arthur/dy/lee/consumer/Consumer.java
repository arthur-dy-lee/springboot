package arthur.dy.lee.consumer;

import java.util.concurrent.BlockingQueue;

public class Consumer implements Runnable {
    private final BlockingQueue<Job> queue;

    public Consumer(BlockingQueue q) {
        this.queue = q;
    }

    @Override
    public void run() {
        while (true) {
            try {
                consume(queue.take());
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }

    private void consume(Job job) {
        JobHandler handler;
        if (job != null && job.getType() != null && job.getType() == "string") {
            handler = new StringJobHandler();
            handler.invoke(job);
        } else if (job != null && job.getType() != null && job.getType() == "int") {
            handler = new IntJobHandler();
            handler.invoke(job);
        }
    }
}
