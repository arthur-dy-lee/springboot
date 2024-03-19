package arthur.dy.lee.test;

public class ThreadLocalTest {

    public static ThreadLocal<String> threadLocal = new ThreadLocal<>();

    public static void main(String[] args) {
        threadLocal.set("abc");
        threadLocal.set("abc");
        threadLocal.get();

    }

}
