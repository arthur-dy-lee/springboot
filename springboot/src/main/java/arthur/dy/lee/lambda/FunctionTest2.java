package arthur.dy.lee.lambda;

import java.util.function.Function;

public class FunctionTest2<In, Out> {
    private Function<In, Out> processor = in -> {
        return (Out) new String("apply:" + in);
    };

    public static void main(String[] args) {
        FunctionTest2<String, String> functionTest2 = new FunctionTest2();
        System.out.println(functionTest2.processor.apply("hello~!"));
    }
}
