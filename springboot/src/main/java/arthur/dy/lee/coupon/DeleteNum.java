package arthur.dy.lee.coupon;

import java.util.HashMap;

public class DeleteNum {

    public static String deleteStr(String str, int n) {
        if (str == null || str == "") {
            return str;
        }

        for (int i = 0; i < n; i++) {
            str = deleteMax(str, n);
        }
        return str;
    }

    private static String deleteMax(String string, int n) {
        if (n == 0) {
            return string;
        }

        char[] c = string.toCharArray();
        char max = c[0];
        int maxPos = 0;
        for (int i = 1; i < c.length; i++) {
            if (max < c[i]) {
                maxPos = i;
                max = c[i];
            }
        }
        char[] result = new char[c.length - 1];
        int j = 0;
        for (int i = 0; i < c.length; i++) {

            if (i == maxPos) {
                i++;

            }
            if (j < result.length) {
                result[j++] = c[i];
            }

        }

        n--;
        return new String(result);
    }

    public static void main(String[] args) {
        String result = DeleteNum.deleteStr("5222337", 3);
        System.out.println(result);

        HashMap hashMap = new HashMap();
        hashMap.put("1", result);

    }
}
