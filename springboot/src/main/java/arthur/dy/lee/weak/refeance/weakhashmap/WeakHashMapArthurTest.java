package arthur.dy.lee.weak.refeance.weakhashmap;

import arthur.dy.lee.weak.refeance.queue.example.Employee;

import java.util.Map;
import java.util.WeakHashMap;

/**
 * Created by arthur.dy.lee on 2018/3/31.
 */
public class WeakHashMapArthurTest {
    public static void main(String[] args) throws InterruptedException {
        Map<String, Employee> map = new WeakHashMap<>();
        int size = 10000;

        for (int i = 0; i < size; i++) {
            Employee e = new Employee("A" + i);
            map.put(e.getName(), e);
            //e.setName(null);
            e = null;
        }

        System.gc();
        Thread.sleep(2000);

        System.out.println("values gced: " + MyObject.getValueFinalizeCount());

        System.out.println("Map initial size: " + size);
        System.out.println("Map current size: " + map.size());
        System.out.println(map);

       /* for(int i=0;i<100;i++) {
            new BigObject();
        }
        System.out.println("-------------");
        System.out.println("Map current size: " + map.size());
        System.out.println(map);*/
    }
}

class BigObject {
    public BigObject() {
        byte[] b = new byte[1024 * 1024 * 10];
    }
}