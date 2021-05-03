package arthur.dy.lee.test;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;

import java.util.HashMap;
import java.util.Map;

public class HashMapTest {
    public static void main(String[] args) {


        Map<Integer, Integer> map = Maps.newHashMapWithExpectedSize(7);

        System.out.println(map.size());

        map = Maps.newHashMapWithExpectedSize(3);
        map.put(1, 1);
        System.out.println(JSONObject.toJSONString(map));

        map = Maps.newHashMapWithExpectedSize(7);
        map.put(1, 1);
        System.out.println(map.size());

        map = Maps.newHashMapWithExpectedSize(2);
        map.put(1, 1);
        System.out.println(map.size());

        map = Maps.newHashMapWithExpectedSize(4);
        map.put(1, 1);
        System.out.println(map.size());

        map = Maps.newHashMapWithExpectedSize(8);
        System.out.println(map.size());

        map = Maps.newHashMapWithExpectedSize(16);
        System.out.println(map.size());

        System.out.println("----------");
        Map<Integer, Integer> map2 = new HashMap<>(1);
        System.out.println(map2.size());
        map2 = new HashMap<>(3);
        System.out.println(map2.size());
        map2 = new HashMap<>(7);
        System.out.println(map2.size());
    }
}
