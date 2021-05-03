package arthur.dy.lee.weak.refeance.queue.example;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by arthur.dy.lee on 2018/3/29.
 */
public class Company {
    private Set<Employee> employees;

    public void addEmployee(Employee employee) {
        if (employees == null) {
            employees = new HashSet<>();
        }
        employees.add(employee);
    }

    public void removeAllEmployees() {
        employees.clear();
    }
}
