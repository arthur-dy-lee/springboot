package arthur.dy.lee.weak.refeance.base.example;

import java.lang.ref.WeakReference;


/**
 * Created by arthur.dy.lee on 2018/3/29.
 */

public class D {
    private WeakReference<B> bRef;

    public D(WeakReference<B> bRef) {
        this.bRef = bRef;
    }

    public B getB() {
        return bRef.get();
    }

    @Override
    public void finalize() {
        System.out.println("D cleaned");
    }
}