package arthur.dy.lee.consumer;

import java.io.Serializable;

public class Job implements Serializable {
    public String str;
    public int a;
    public int b;
    public String type;

    public Job(String type, String str) {
        this.str = str;
        this.type = type;
    }

    public Job(String type, int a, int b) {
        this.type = type;
        this.a = a;
        this.b = b;
    }

    public String getStr() {
        return str;
    }

    public void setStr(String str) {
        this.str = str;
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
