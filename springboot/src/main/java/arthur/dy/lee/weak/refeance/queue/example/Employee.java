package arthur.dy.lee.weak.refeance.queue.example;

/**
 * Created by arthur.dy.lee on 2018/3/29.
 */
public class Employee {
    private String name;

    private Integer id;

    public Employee(String name) {
        this.name = name;
    }

    public Employee(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public Integer getId() {
        return id;
    }

    @Override public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", id=" + id +
                '}';
    }
}