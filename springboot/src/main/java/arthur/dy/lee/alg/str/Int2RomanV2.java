package arthur.dy.lee.alg.str;

/**
 * 整数转罗马数字
 * <p>
 * 罗马数字包含以下七种字符：I，V，X，L，C，D和M。
 * <p>
 * 字符          数值
 * I             1
 * V             5
 * X             10
 * L             50
 * C             100
 * D             500
 * M             1000
 * 例如， 罗马数字 2 写做II，即为两个并列的 1。12 写做XII，即为X+II。 27 写做XXVII, 即为XX+V+II。
 * <p>
 * 通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做IIII，而是IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为IX。这个特殊的规则只适用于以下六种情况：
 * <p>
 * I可以放在V(5) 和X(10) 的左边，来表示 4 和 9。
 * X可以放在L(50) 和C(100) 的左边，来表示 40 和90。
 * C可以放在D(500) 和M(1000) 的左边，来表示400 和900。
 * 给你一个整数，将其转为罗马数字。
 * <p>
 * <p>
 * <p>
 * 示例1:
 * <p>
 * 输入:num = 3
 * 输出: "III"
 * 示例2:
 * <p>
 * 输入:num = 4
 * 输出: "IV"
 * 示例3:
 * <p>
 * 输入:num = 9
 * 输出: "IX"
 * 示例4:
 * <p>
 * 输入:num = 58
 * 输出: "LVIII"
 * 解释: L = 50, V = 5, III = 3.
 * 示例5:
 * <p>
 * 输入:num = 1994
 * 输出: "MCMXCIV"
 * 解释: M = 1000, CM = 900, XC = 90, IV = 4.
 * <p>
 * <p>
 * 提示：
 * <p>
 * 1 <= num <= 3999
 * <p>
 * <p>
 * 来源：力扣（LeetCode）
 * 链接：https://leetcode-cn.com/problems/integer-to-roman
 * 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
public class Int2RomanV2 {

    String[] thousands = { "", "M", "MM", "MMM" };
    String[] hundreds  = { "", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM" };
    String[] tens      = { "", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC" };
    String[] ones      = { "", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX" };

    public String intToRoman(int num) {
        StringBuffer roman = new StringBuffer();
        roman.append(thousands[num / 1000]);
        roman.append(hundreds[num % 1000 / 100]);
        roman.append(tens[num % 100 / 10]);
        roman.append(ones[num % 10]);
        return roman.toString();
    }

    public static void main(String[] args) {
        System.out.println("41/10=" + 41 / 10);     //4
        System.out.println("42/10=" + (42 / 10));   //4
        System.out.println("43/10=" + (43 % 10));   //3
        System.out.println("45%10=" + (45 % 10));   //5
        System.out.println("--------");
        int num = 3;
        Int2RomanV2 int2Roman = new Int2RomanV2();
        System.out.println("num=" + num + ", reslut = " + int2Roman.intToRoman(num));
        num = 4;
        System.out.println("num=" + num + ", reslut = " + int2Roman.intToRoman(num));
        num = 9;
        System.out.println("num=" + num + ", reslut = " + int2Roman.intToRoman(num));
        num = 58;
        System.out.println("num=" + num + ", reslut = " + int2Roman.intToRoman(num));
        num = 1994;
        System.out.println("num=" + num + ", reslut = " + int2Roman.intToRoman(num));
    }

}
