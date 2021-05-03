package arthur.dy.lee.alg.sort;

import java.util.HashMap;

/**
 * 给你一个字符串 s 和一个 长度相同 的整数数组 indices 。 *
 * 请你重新排列字符串 s ，其中第 i 个字符需要移动到 indices[i] 指示的位置。 *
 * 返回重新排列后的字符串。
 *
 * 示例 1：
 * 输入：s = "codeleet", indices = [4,5,6,7,0,2,1,3]
 * 输出："leetcode"
 * 解释：如图所示，"codeleet" 重新排列后变为 "leetcode" 。
 *
 * 示例 3：
 * 输入：s = "aiohn", indices = [3,1,4,2,0]
 * 输出："nihao"
 *
 */
public class RestoreString {
    public static String restoreString(String s, int[] indices) {
        int length = s.length();
        char[] result = new char[length];

        for (int i = 0; i < length; i++) {
            result[indices[i]] = s.charAt(i);
        }
        return new String(result);
    }

    public static void main(String[] args) {
        String s = "codeleet";
        int[] indices = new int[]{4, 5, 6, 7, 0, 2, 1, 3};
        String res = RestoreString.restoreString(s, indices);
        System.out.println(res);

        HashMap hashMap = new HashMap();
        hashMap.put("1","a");


    }
}
