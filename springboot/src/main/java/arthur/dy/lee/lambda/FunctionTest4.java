package arthur.dy.lee.lambda;

import java.util.function.Function;

public class FunctionTest4 {
    public static void main(String[] args) {
        FunctionTest4 test1 = new FunctionTest4();
        //传递行为
        System.out.println(test1.compute(1, value -> {
            return 2 * value;
        }));
        System.out.println(test1.compute(2, value -> 5 + value));
        System.out.println(test1.compute(3, value -> value * value));
        System.out.println(test1.convert(5, value -> String.valueOf(value + "helloworld")));
        System.out.println(test1.method1(2));

        Function<Integer, Integer> function = value -> value * 2;
        System.out.println(test1.compute(4, function));

        Function<Integer, Integer> A = i -> i + 1;
        Function<Integer, Integer> B = i -> i * i;
        System.out.println("F1:" + B.apply(A.apply(5)));
        System.out.println("F2:" + A.apply(B.apply(5)));
    }

    //传递行为，根据行为选择处理。
    public int compute(int a, Function<Integer, Integer> function) {
        int result = function.apply(a);
        return result;
    }

    public String convert(int a, Function<Integer, String> function) {
        return function.apply(a);
    }

    //之前做法
    public int method1(int a) {
        return 2 * a;
    }

    public int method2(int a) {
        return 5 + a;
    }

    public int method3(int a) {
        return a * a;
    }
}
