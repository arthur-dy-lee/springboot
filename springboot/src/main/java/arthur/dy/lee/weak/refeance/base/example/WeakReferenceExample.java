package arthur.dy.lee.weak.refeance.base.example;

import java.lang.ref.WeakReference;

/**
 * http://www.javarticles.com/2016/10/java-weakreference-example.html
 *
 * Created by arthur.dy.lee on 2018/3/29.
 */
public class WeakReferenceExample {
    public static void main(String[] args) {
        B b = new B();
        WeakReference<B> bRef = new WeakReference<B>(b);
        C c = new C(b);
        A a = new A(c);
        b = null;

        System.out.println("Run gc");
        Runtime.getRuntime().gc();

        System.out.println("bRef's referent:" + bRef.get());
        System.out.println("bRef's referent thru a->c->d->bRef:" + a.getC().getD().getB());
    }

}
