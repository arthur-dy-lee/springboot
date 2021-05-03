package arthur.dy.lee.weak.refeance.base.example;

/**
 * Created by arthur.dy.lee on 2018/3/29.
 */
public class A {
    private C c;

    public A(C c) {
        this.c = c;
    }

    public C getC() {
        return c;
    }

    @Override
    public void finalize() {
        System.out.println("A cleaned");
    }
}