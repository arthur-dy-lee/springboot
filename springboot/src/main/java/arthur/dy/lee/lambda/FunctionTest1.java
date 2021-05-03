package arthur.dy.lee.lambda;

import java.util.function.Function;

public class FunctionTest1<In, Out> {

    private Function<In, Out> processor = new Function<In, Out>() {
        @Override
        public Out apply(In in) {
            return (Out) new String("apply:" + in);

        }
    };

    public static void main(String[] args) {
        FunctionTest1<String, String> functionTest1 = new FunctionTest1();
        System.out.println(functionTest1.processor.apply("hello~!"));
    }
}