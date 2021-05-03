package arthur.dy.lee.test;

import java.lang.ref.WeakReference;

/**
 * Created by Administrator on 2017/7/6.
 */
public class TestWeakReference {

    public static void main(String[] args) {

        Car car = new Car(22000, "silver");
        WeakReference<Car> weakCar = new WeakReference<Car>(car);

        int i = 0;

        while (true) {
            if (weakCar.get() != null) {
                i++;
                System.out.println("Object is alive for " + i + " loops - " + weakCar);
            } else {
                System.out.println("Object has been collected.");
                break;
            }
        }
        //car.doSomething();

    }


}
class Car {
    int    price;
    String name;

    public Car() {
    }

    public Car(int price, String name) {
        this.price = price;
        this.name = name;
    }

    public void doSomething(){
        System.out.println("--");
    }

}
