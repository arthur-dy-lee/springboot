package arthur.dy.lee.test;

public class ThreadLocalExample {

    public static void main(String[] args) {
        ThreadLocal t = new ThreadLocal();
        t.set(new Object());

        Thread thread = new Thread();
    }
}
