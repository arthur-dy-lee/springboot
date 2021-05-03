package arthur.dy.lee.netty;

import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.atomic.LongAdder;

/**
 * Created by arthur.dy.lee on 2018/5/5.
 */
public class ArthurTest2 {
    public static void main(String[] args) {
        System.out.println(Integer.compare(1 << 30, 1 << 29));
        /*Map<Integer, String> map = new HashMap();
        map.put(1, "a");
        map.put(2, "b");
        map.put(3, "c");
        map.put(4, "a4");
        map.put(5, "a5");
        map.put(6, "a6");
        map.put(7, "a7");
        map.put(8, "a8");
        map.put(9, "a9");
        map.put(10, "a10");
        map.put(11, "a11");
        map.put(12, "a12");
        map.put(13, "a13");
        map.put(14, "a14");
        map.put(15, "a15");
        map.put(16, "a16");
        map.put(17, "a17");

        map.get(1);*/

        ConcurrentHashMap<String, String> conMap = new ConcurrentHashMap<>();
        conMap.put("1", "k1");
        conMap.put("2", "k2");
        conMap.put("3", "k3");
        conMap.put("4", "k4");

        int HASH_BITS = 0x7fffffff;
        System.out.println(
                "HASH_BITS == 0x7fffffff=" + 0x7fffffff + "," + Integer.toBinaryString(2147483647) + ", 2<<<31=" + (1
                        << 31) + ","
                        + Integer.toBinaryString(1 << 31));
        System.out.println("-----------------");
        int h = -4;
        int ret = (h ^ (h >>> 16)) & HASH_BITS;

        System.out
                .println("h=" + h + ", h ^ (h >>> 16) & HASH_BITS= " + ret + ", ret二进制=" + Integer.toBinaryString(ret));
        System.out.println("-----------------");
        int temp = h ^ (h >>> 16);
        System.out.println("h ^ (h >>> 16)=" + (temp) + ", temp = " + Integer.toBinaryString(temp));
        System.out.println((temp & HASH_BITS) + ", = " + Integer.toBinaryString(temp & HASH_BITS));
        int NCPU = Runtime.getRuntime().availableProcessors();
        System.out.println("NCPU=" + NCPU);

        Collections.synchronizedMap(new HashMap<>());
        System.out.println(ThreadLocalRandom.current().nextLong());
        System.out.println(ThreadLocalRandom.current().nextLong());

        System.out.println(Integer.numberOfLeadingZeros(1));
        System.out.println(Integer.numberOfLeadingZeros(3));

        LongAdder longAdder;

        resizeStamp(2);
        resizeStamp(4);
        resizeStamp(6);
        resizeStamp(8);
        resizeStamp(16);
        resizeStamp(32);

        System.out.println("1<<16 = " + (1 << 16));
        int rs = resizeStamp(16);
        int t;
        System.out.println("rs=" + rs + ", rs<<16 = " + (rs << 16));
        System.out.println("(rs << 16) + 2 = "+ ((rs << 16) + 2));
        System.out.println((1 << 15) + ", " + Integer.toBinaryString(1 << 15));
    }

    public static int resizeStamp(int n) {
        int RESIZE_STAMP_BITS = 16;
        int t = Integer.numberOfLeadingZeros(n) | (1 << (RESIZE_STAMP_BITS - 1));
        System.out.println(
                "n=" + n + ", resizeStamp=" + t + ", 二进制为: " + Integer.toBinaryString(t)
                        + ", 右移16位: " + (t << 16) + ", 右移后的二进制: " + Integer.toBinaryString((t << 16)));
        return t;
    }

}
