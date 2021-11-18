package arthur.dy.lee.lambda;

import java.util.ArrayList;
import java.util.List;

public class DeletListElement {

    public static void main(String[] args) {

        List<String> list = new ArrayList<>();
        list.add("a");
        list.add("b");
        list.add("c");
        list.add("d");
        //list.remove("b");
        list.remove(2);
        for (String s : list) {
            System.out.println(s);
        }
    }
}
