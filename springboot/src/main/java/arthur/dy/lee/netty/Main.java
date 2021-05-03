package arthur.dy.lee.netty;

import java.util.function.Function;
import java.util.function.IntFunction;

/**
 * Created by arthur.dy.lee on 2018/6/20.
 */
public class Main {
    public static void main(String[] args) {
        IntFunction<String> i = (x) -> Integer.toString(x);
        System.out.println(i.apply(3).length());

        //简单的,只有一行
        Function<Integer, String> function1 = (x) -> "test result: " + x;
        //标准的,有花括号, return, 分号.
        Function<String, String> function2 = (x) -> {
            return "after function1";
        };
        System.out.println(function1.apply(6));
        System.out.println(function1.andThen(function2).apply(6));

    }
}
