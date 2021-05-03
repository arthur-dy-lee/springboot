package arthur.dy.lee.weak.refeance.base.example;

/**
 * Created by arthur.dy.lee on 2018/3/29.
 */
public class B {

    @Override
    public void finalize() {
        System.out.println("B cleaned");
    }
}