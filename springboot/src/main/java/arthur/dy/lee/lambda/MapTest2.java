package arthur.dy.lee.lambda;

import org.apache.commons.lang.StringUtils;

import java.util.Arrays;

public class MapTest2 {
    private static String isApple() {

        String[] appleList = {"栗子", "石榴", "大苹果", "石头", "馒头"};

        Apples apples = var -> var.equals("苹果") ? "苹果" : "不是苹果";

        //map(可以将List中的每个元素传入接口函数) map(x -> apples.getApple(x)) >> 简化 >> map(apples::getApple)
        //1.filter(过滤List中的元素,调用StringUtils中的函数进行判断过滤)
        //2.filter(元素直接使用自定义判定)
        //findFirst(取出过滤后List中的第一个)
        //orElse(若过滤后为空,无符合.则取此值)
        return Arrays.stream(appleList).map(apples::getApple)
                .filter(StringUtils::isNotEmpty) //1
                .filter(x -> x.equals("苹果"))  //2
                .findFirst()
                .orElse("没有苹果");
    }


    public static void main(String[] args) {
        String apple = MapTest2.isApple();
        System.out.println(apple);
    }


}

interface Apples {
    String getApple(String var);
}
