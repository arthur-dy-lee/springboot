package arthur.dy.lee.consumer;


import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class TestConsumerProducer {
    public static void main(String[] args) {
        BlockingQueue<Job> queue = new ArrayBlockingQueue<>(100);
        Producer p = new Producer(queue);
        Consumer c1 = new Consumer(queue);
        Consumer c2 = new Consumer(queue);


        Thread producer = new Thread(p);
        producer.setName("生产者线程");
        Thread consumer1 = new Thread(c1);
        consumer1.setName("字符串1");
        Thread consumer2 = new Thread(c2);
        consumer2.setName("整数相加2");

        producer.start();
        consumer1.start();
        consumer2.start();

        int a = 1 / 0;


    }
}