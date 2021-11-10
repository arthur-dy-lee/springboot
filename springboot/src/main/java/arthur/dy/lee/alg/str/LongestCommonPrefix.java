package arthur.dy.lee.alg.str;

/**
 * 最长公共前缀
 * <p>
 * 编写一个函数来查找字符串数组中的最长公共前缀。
 * <p>
 * 如果不存在公共前缀，返回空字符串""。
 * <p>
 * 示例 1：
 * <p>
 * 输入：strs = ["flower","flow","flight"]
 * 输出："fl"
 * 示例 2：
 * <p>
 * 输入：strs = ["dog","racecar","car"]
 * 输出：""
 * 解释：输入不存在公共前缀。
 * <p>
 * <p>
 * 提示：
 * 1 <= strs.length <= 200
 * 0 <= strs[i].length <= 200
 * strs[i] 仅由小写英文字母组成
 */
public class LongestCommonPrefix {
    public String longestCommonPrefix(String[] strs) {

        if (strs == null || strs.length == 0) {
            return "";
        }
        if (strs.length == 1) {
            return strs[0];
        }
        StringBuilder result = new StringBuilder();
        int len = strs.length;

        String tmp = strs[0];
        int strLen = tmp.length();
        int j = 0;
        while (j < strLen) {
            for (int i = 1; i < len; i++) {

                if (j == strs[i].length() || tmp.charAt(j) != strs[i].charAt(j)) {
                    return result.toString();
                }
                if (i == len - 1) {
                    result.append(strs[i].charAt(j));

                }
            }
            j++;

        }

        return result.toString();
    }

    public static void main(String[] args) {
        LongestCommonPrefix lcp = new LongestCommonPrefix();

        String[] strs = { "flower", "flow", "flight" };
        System.out.println(lcp.longestCommonPrefix(strs));

        String[] strs2 = { "dog", "racecar", "car" };
        System.out.println(lcp.longestCommonPrefix(strs2));

        String[] strs3 = { "flow", "flower", "flight" };
        System.out.println(lcp.longestCommonPrefix(strs3));
    }
}
