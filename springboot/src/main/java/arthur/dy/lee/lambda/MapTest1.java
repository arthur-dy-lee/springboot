package arthur.dy.lee.lambda;

import java.util.Arrays;
import java.util.List;

public class MapTest1 {
    public static void main(String[] args) {
        List<String> funs1 = Arrays.asList("F", "U", "N");
        funs1.stream().forEach(x -> output(x));

        List<String> funs2 = Arrays.asList("F", "U", "N");
        funs2.stream().map(x->x+"001").forEach(x->output(x));
        System.out.println("------------");

        List<String> fun1 = Arrays.asList("one", "two", "three");
        List<String> fun2 = Arrays.asList("four", "five", "six");

        List<List<String>> nestedList = Arrays.asList(fun1, fun2);
        nestedList.stream().map(x -> {
            return x.stream().map(a -> a.toUpperCase());
        //}).forEach(x -> System.out.println(x));
        }).forEach(x ->x.forEach(a->output(a)));
        System.out.println("----------");
        List<List<String>> nestedList2 = Arrays.asList(fun1, fun2);
        nestedList2.stream().flatMap(x -> x.stream()).map(x->x.toUpperCase()).forEach(x -> output(x));

        System.out.println("-----------------------");
//        Stream.of(fun1,fun2).flatMap(List::stream).forEach(Output::output);
    }

    private static void output(String x) {
        System.out.println(x);
    }
}

/**
 * map()操作为每个输入值生成一个输出值，而flatMap()操作为每个输入值生成任意数量（零个或多个）的输出值。
 *
 * 在flatMap()中，每个输入始终是一个集合，可以是List或Set或Map。
 *
 * map()操作采用一个方法，该方法针对输入流中的每个值调用，并生成一个结果值，该结果值返回至stream。
 *
 * flatMap()操作采用的功能在概念上消耗一个集合对象并产生任意数量的值。但是在Java中方法返回任意数目的值很麻烦，因为方法只能返回void或一个对象。
 *
 */
