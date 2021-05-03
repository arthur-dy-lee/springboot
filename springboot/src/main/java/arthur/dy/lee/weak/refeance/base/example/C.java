package arthur.dy.lee.weak.refeance.base.example;

import java.lang.ref.WeakReference;

/**
 * Created by arthur.dy.lee on 2018/3/29.
 */

public class C {
    private D d;

    public C(B b) {
        d = new D(new WeakReference<B>(b));
    }

    public D getD() {
        return d;
    }

    @Override
    public void finalize() {
        System.out.println("C cleaned");
    }
}