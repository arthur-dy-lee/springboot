package arthur.dy.lee.alg.str;

/**
 * 字符串转换整数 (atoi)
 * 跳过前面的空格，后面直接抄 java.lang.Integer#parseInt(java.lang.String, int) 实现应该是最简单的。
 */
public class String2IntegerV2 {
    public int myAtoi(String str) {
        int result = 0;
        boolean negative = false;
        int i = 0, len = str.length();
        int limit = -Integer.MAX_VALUE;
        int multmin;
        int digit;

        //skip space before string
        while (i < len) {
            if (str.charAt(i) == ' ') {
                i++;
            } else {
                break;
            }
        }

        if (i < len) {
            char firstChar = str.charAt(i);
            if (firstChar < '0') { // Possible leading "+" or "-"
                if (firstChar == '-') {
                    negative = true;
                    limit = Integer.MIN_VALUE;
                } else if (firstChar != '+') {
                    return 0;
                }

                i++;

                if (len == i) {
                    return 0;
                }
            }

            multmin = limit / 10;
            while (i < len) {
                // Accumulating negatively avoids surprises near MAX_VALUE
                digit = Character.digit(str.charAt(i++), 10);
                if (digit < 0) {
                    return negative ? result : -result;
                }
                if (result < multmin) {
                    return negative ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                }
                result *= 10;
                if (result < limit + digit) {
                    return negative ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                }
                result -= digit;
            }
        } else {
            return 0;
        }

        return negative ? result : -result;
    }

    public static void main(String[] args) {
        String2IntegerV2 a = new String2IntegerV2();
        String s1 = "42";
        String s2 = "   -42";
        String s3 = "4193 with words";
        String s4 = "words and 987";
        String s5 = "-91283472332";
        System.out.println(s1 + ", myAtoi=" + a.myAtoi(s1));
        System.out.println(s2 + ", myAtoi=" + a.myAtoi(s2));
        System.out.println(s3 + ", myAtoi=" + a.myAtoi(s3));
        System.out.println(s4 + ", myAtoi=" + a.myAtoi(s4));
        System.out.println(s5 + ", myAtoi=" + a.myAtoi(s5));

        String s = "4";
        int res = s.charAt(0) - '0';
        System.out.println("res = " + res);
        Integer.parseInt("4");

    }
}


