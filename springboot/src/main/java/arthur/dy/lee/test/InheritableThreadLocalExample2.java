package arthur.dy.lee.test;

public class InheritableThreadLocalExample2 {
    public static void main(String[] args) {

        //主线程中赋值
        ThreadLocal<String> stringThreadLocal = new ThreadLocal<>();
        InheritableThreadLocal<String> stringInheritableThreadLocal = new InheritableThreadLocal<>();

        stringThreadLocal.set("ThreadLocal string");
        stringInheritableThreadLocal.set("InheritableThreadLocal string");

        Thread t = Thread.currentThread();

        //子线程中分别打印两个变量的信息
        new Thread(() -> {
            System.out.println(
                    Thread.currentThread().getName() + " ThreadLocal value ：" + stringThreadLocal.get());
            System.out.println(Thread.currentThread().getName() + " InheritableThreadLocal value ："
                    + stringInheritableThreadLocal.get());
        }).start();

        Thread thread = new Thread();
    }
}
