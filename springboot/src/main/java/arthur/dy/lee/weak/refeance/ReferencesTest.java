package arthur.dy.lee.weak.refeance;

import arthur.dy.lee.weak.refeance.queue.example.Employee;

import java.util.Map;
import java.util.WeakHashMap;

public class ReferencesTest {

    public static void main(String[] args) {
        new ReferencesTest().doFunction();
    }

    private void doFunction() {

        Map<Integer, Employee> map = new WeakHashMap<Integer, Employee>();
        Employee e = new Employee("1");
        map.put(new Integer(1), e);
        e = new Employee("2");
        map.put(new Integer(2), e);
        System.gc();
        System.out.println(map);

        System.out.println("--------------");
        Map<String, Employee> map2 = new WeakHashMap<String, Employee>();
        e = new Employee("3");
        map2.put("3", e);
        e = new Employee("3");
        map2.put(new String("4"), e);
        System.gc();
        System.out.println(map2);
    }
}