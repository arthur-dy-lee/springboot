package arthur.dy.lee.test;

public class InheritableThreadLocalExample {
    private static final InheritableThreadLocal<String> inheritableThreadLocal = new InheritableThreadLocal<>();
    private static final InheritableThreadLocal<String> inheritableThreadLocal2 = new InheritableThreadLocal<>();
    public static void main(String[] args) {
        inheritableThreadLocal.set("父线程的值");

        inheritableThreadLocal2.set("父线程的值2");
        Thread childThread = new Thread(() -> {
            System.out.println("子线程值: " + inheritableThreadLocal.get());
            System.out.println("子线程值: " + inheritableThreadLocal2.get());
        });
        childThread.start();
    }
}
