package arthur.dy.lee.alg.str;

/**
 * 1. 实现 indexOf(int[] array, int[] subArray)，找到在 array 中第一次出现 subArray 的下标，如果不存在，返回 -1
 * e.g.
 * <p>
 * indexOf([10, 11, 12, 13], [12, 13]): 2
 * indexOf([10, 11, 12], [11, 13]): -1 # array 参数中不存在连续的 [11, 13] 子串
 * indexOf([10, 11, 12], [10]): 0
 */
public class SubArray {
    public static int indexOf(int[] array, int[] subArray) {
        if (array == null || subArray == null || array.length == 0 || subArray.length == 0
                || array.length < subArray.length) {
            return -1;
        }
        int i = 0;
        int totalLen = array.length;

        while (i < array.length) {
            if (totalLen - i < subArray.length) {
                return -1;
            }
            int result = -1;
            for (int j = 0; j < subArray.length; j++) {
                if (array[i] != subArray[j]) {
                    i++;
                    break;
                }
                if (array[i] == subArray[0]) {
                    result = i;
                }
                if (j == (subArray.length - 1)) {
                    return result;
                }
                i++;
            }

        }
        return -1;
    }

    public static void main(String[] args) {
        int[] array = { 10, 11, 12, 13 };
        int[] subArray = { 12,13 };
        System.out.println("2"+SubArray.indexOf(array, subArray));
        int[] array2 = {10, 11, 12};
        int[] subArray2 = {11, 13};
        System.out.println("1"+SubArray.indexOf(array2, subArray2));
        int[] array3 = {10, 11, 12};
        int[] subArray3 = {10};
        System.out.println("0"+SubArray.indexOf(array3, subArray3));
        int[] array4 = {10, 11, 12};
        int[] subArray4 = {0};
        System.out.println("-1"+SubArray.indexOf(array4, subArray4));

        int[] array5 = {10, 11, 12};
        int[] subArray5 = {10, 11, 12,13};
        System.out.println("-1"+SubArray.indexOf(array4, subArray5));

        int[] array6 = {10, 11, 12};
        int[] subArray6 = {11};
        System.out.println("1"+SubArray.indexOf(array6, subArray6));

        int[] array7 = {10, 11, 12, 11, 12};
        int[] subArray7 = {11,12};
        System.out.println("1"+SubArray.indexOf(array7, subArray7));

        int[] array8 = {10, 11, 12, 11, 12};
        int[] subArray8 = {11};
        System.out.println("1"+SubArray.indexOf(array4, subArray8));

        int[] array9 = {10, 11, 12, 11, 12};
        int[] subArray9 = {};
        System.out.println("-1"+SubArray.indexOf(array9, subArray9));

        int[] array10 = {10};
        int[] subArray10 = {11};
        System.out.println("-1"+SubArray.indexOf(array10, subArray10));

    }
}
