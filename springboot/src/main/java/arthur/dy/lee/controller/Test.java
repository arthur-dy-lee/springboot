package arthur.dy.lee.controller;

/**
 * Created by Administrator on 2017/7/3.
 */
public class Test {
    ThreadLocal threadLocal = null;

    public static void main(String[] args) {
        //        Map<String, String> map = new HashMap<String, String>();
        //
        //        AtomicLong atomicLong;
        //        LongAdder longAdder;
        //        TreeSet<String> treeSet;
        //
        //        ForkJoinPool forkJoinPool;
        //        AbstractQueuedSynchronizer abstractQueuedSynchronizer;
        //        BlockingDeque blockingDeque;
        //
        ThreadLocal threadLocal = new ThreadLocal();
        threadLocal.set(1L);

        Thread thread = new Thread();
        thread.start();
        thread.getState();
        int a = Integer.parseInt("11");

    }
}
