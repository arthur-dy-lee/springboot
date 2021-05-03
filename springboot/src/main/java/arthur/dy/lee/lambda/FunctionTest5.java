package arthur.dy.lee.lambda;

import java.util.function.BiFunction;
import java.util.function.Function;

public class FunctionTest5 {
    public static void main(String[] args) {
        FunctionTest5 test = new FunctionTest5();
        System.out.println(test.compute1(2, value -> value * 3, value -> value * value)); // 12
        System.out.println(test.compute2(2, value -> value * 3, value -> value * value)); // 36
        System.out.println(test.compute3(1, 2, (value1, value2) -> value1 + value2));
        System.out.println(test.compute3(1, 2, (value1, value2) -> value1 - value2));
        System.out.println(test.compute3(1, 2, (value1, value2) -> value1 * value2));
        System.out.println(test.compute3(1, 2, (value1, value2) -> value1 / value2));
        System.out.println(test.compute4(2, 3, (value1, value2) -> value1 + value2, value -> value * value)); //25
    }

    //先运行function2得到结果再运行function1
    public int compute1(int a, Function<Integer, Integer> function1, Function<Integer, Integer> function2) {
        return function1.compose(function2).apply(a);
    }

    //先运行function1得到结果再运行function2
    public int compute2(int a, Function<Integer, Integer> function1, Function<Integer, Integer> function2) {
        return function1.andThen(function2).apply(a);
    }

    //两参数
    public int compute3(int a, int b, BiFunction<Integer, Integer, Integer> biFunction) {
        return biFunction.apply(a, b);
    }

    //先运行biFunction得到结果再运行function
    public int compute4(int a, int b, BiFunction<Integer, Integer, Integer> biFunction,
                        Function<Integer, Integer> function) {
        return biFunction.andThen(function).apply(a, b);
    }
}
