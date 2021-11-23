package arthur.dy.lee.alg.find;

import com.alibaba.fastjson.JSONObject;

/**
 * 34. 在排序数组中查找元素的第一个和最后一个位置
 * https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/solution/tu-jie-er-fen-zui-qing-xi-yi-dong-de-jia-ddvc/
 * <p>
 * 给定一个按照升序排列的整数数组 nums，和一个目标值 target。找出给定目标值在数组中的开始位置和结束位置。
 * <p>
 * 如果数组中不存在目标值 target，返回[-1, -1]。
 * <p>
 * 进阶：
 * 你可以设计并实现时间复杂度为O(log n)的算法解决此问题吗？
 * <p>
 * 示例 1：
 * 输入：nums = [5,7,7,8,8,10], target = 8
 * 输出：[3,4]
 * 示例2：
 * 输入：nums = [5,7,7,8,8,10], target = 6
 * 输出：[-1,-1]
 * 示例 3：
 * 输入：nums = [], target = 0
 * 输出：[-1,-1]
 * <p>
 * 提示：
 * 0 <= nums.length <= 105
 * -109<= nums[i]<= 109
 * nums是一个非递减数组
 * -109<= target<= 109
 */
public class SearchRange {
    public int[] searchRange(int[] nums, int target) {
        if (nums.length == 0)
            return new int[] { -1, -1 };

        int l = 0, r = nums.length - 1; //二分范围
        while (l < r)                    //查找元素的开始位置
        {
            int mid = (l + r) / 2;
            if (nums[mid] >= target)
                r = mid;
            else
                l = mid + 1;
        }
        if (nums[r] != target)
            return new int[] { -1, -1 }; //查找失败
        int L = r;
        l = 0;
        r = nums.length - 1;     //二分范围
        while (l < r)                    //查找元素的结束位置
        {
            int mid = (l + r + 1) / 2;
            if (nums[mid] <= target)
                l = mid;
            else
                r = mid - 1;
        }
        return new int[] { L, r };
    }

    public int[] searchRange2(int[] nums, int target) {
        int leftIdx = binarySearch(nums, target, true);
        int rightIdx = binarySearch(nums, target, false) - 1;
        if (leftIdx <= rightIdx && rightIdx < nums.length && nums[leftIdx] == target && nums[rightIdx] == target) {
            return new int[] { leftIdx, rightIdx };
        }
        return new int[] { -1, -1 };
    }

    public int binarySearch(int[] nums, int target, boolean lower) {
        int left = 0, right = nums.length - 1, ans = nums.length;
        while (left <= right) {
            int mid = (left + right) / 2;
            if (nums[mid] > target || (lower && nums[mid] >= target)) {
                right = mid - 1;
                ans = mid;
            } else {
                left = mid + 1;
            }
        }
        return ans;
    }

    public static void main(String[] args) {
        int[] nums = { 5, 7, 7, 8, 8, 10 };
        int target = 8;
        SearchRange s = new SearchRange();
        System.out.println(JSONObject.toJSONString(s.searchRange(nums, target)));

        s = new SearchRange();
        System.out.println(JSONObject.toJSONString(s.searchRange2(nums, target)));
    }
}
