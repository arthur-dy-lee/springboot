package arthur.dy.lee.alg;

import com.alibaba.druid.support.json.JSONUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @TODO
 *
 */
public class _1_TwoSum {

    public static int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            for (int j = 0; j < map.size(); j++) {
                if (target - nums[i] == map.get(j).intValue()) {
                    return new int[]{ j, i };
                }
            }
            map.put(i, nums[i]);
        }
        throw new IllegalArgumentException("not exist in nums");
    }

    public static void main(String[] args) {
        int[] nums = { 3, 2, 4 };
        System.out.println(JSONUtils.toJSONString(twoSum(nums, 6)));
        int[] nums2 = { 2, 7, 11, 15 };
        System.out.println(JSONUtils.toJSONString(twoSum(nums2, 9)));
    }
}
