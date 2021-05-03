package arthur.dy.lee.netty;

/**
 * Created by arthur.dy.lee on 2018/4/7.
 */
public class ArthurTest {
    public static void testFinally1() {
        //int result = 1 / 0;
        try {
            System.out.println("try block");
            //            System.exit(0);
        } catch (Exception e) {
            System.out.println("catch block");
        } finally {
            System.out.println("finally block");
        }
    }

    public static int numberOfLeadingZeros(int i) {
        // HD, Figure 5-6
        if (i == 0)
            return 32;
        int n = 1;
        if (i >>> 16 == 0) {
            n += 16;
            i <<= 16;
        }
        if (i >>> 24 == 0) {
            n += 8;
            i <<= 8;
        }
        if (i >>> 28 == 0) {
            n += 4;
            i <<= 4;
        }
        if (i >>> 30 == 0) {
            n += 2;
            i <<= 2;
        }
        n -= i >>> 31;
        return n;
    }

    public static void main(String[] args) throws InterruptedException {
        //        testFinally1();
        //
        //        FileInputStream fileInputStream;
        //
        //        Date d = new Date();
        //        Thread.sleep(1000L);
        //        Date d2 = new Date();
        //        System.out.println(d.compareTo(d2));
        //        System.out.println(d2.compareTo(d));

        System.out.println(-4 >>> 1);
        //  System.out.println(Integer.toBinaryString(2147483646));

        System.out.println(2147483646 >> 30);
        System.out.println(1 << 30);
        System.out.println("-------------");
        System.out.println(
                "2 binary = " + Integer.toBinaryString(2) + ", 2 after >>> 2 = " + Integer.toBinaryString(2 >>> 1));
        System.out.println(
                "-1 binary = " + Integer.toBinaryString(-1) + ", -1 after >>> 1 = " + Integer.toBinaryString(-1 >>> 1));
        System.out.println(
                "-2 binary = " + Integer.toBinaryString(-2) + ", -2 after >>> 1 = " + Integer.toBinaryString(-2 >>> 1));
        System.out.println(
                "-4 binary = " + Integer.toBinaryString(-4) + ", -4 after >>> 1 = " + Integer.toBinaryString(-4 >>> 1));

        System.out.println(Integer.toBinaryString(4));

        //1111111111111111111111111111110;

        System.out.println(Integer.parseInt("-1", 2));

        System.out.println(Integer.MAX_VALUE);
        System.out.println((1 << 31) - 1);
        System.out.println(1 << 31);

        System.out.println("----------numberOfLeadingZeros----------");
        System.out.println(ArthurTest.numberOfLeadingZeros(-1));
        System.out.println(ArthurTest.numberOfLeadingZeros(-2));
        System.out.println(ArthurTest.numberOfLeadingZeros(1));
        System.out.println(ArthurTest.numberOfLeadingZeros(2));
        System.out.println(ArthurTest.numberOfLeadingZeros(4));
        System.out.println("==========");
        System.out.println(Integer.SIZE);

        int mag = 2;
        int shift = 1;
        int chars = Math.max(((mag + (shift - 1)) / shift), 1);
        System.out.println(chars);

        System.out.println("----------");
        int i = 2147483646;

        int n = 1;
        if (i >>> 16 == 0) {
            n += 16;
            i <<= 16;
        }
        if (i >>> 24 == 0) {
            n += 8;
            i <<= 8;
        }
        if (i >>> 28 == 0) {
            n += 4;
            i <<= 4;
        }
        if (i >>> 30 == 0) {
            n += 2;
            i <<= 2;
        }
        System.out.println("n=" + n + ",i=" + i + ", binary i=" + Integer.toBinaryString(i));
        n -= i >>> 31;
        i >>>= 31;
        System.out.println(n + ", i>>>31=" + (i >>> 31) + ", binary i=" + Integer.toBinaryString(i >>> 31));

        System.out.println("----------");
        final int MAXIMUM_CAPACITY = 1 << 30;
        int cap = 5;
        n = cap - 1;
        n |= n >>> 1;
        n |= n >>> 2;
        n |= n >>> 4;
        n |= n >>> 8;
        n |= n >>> 16;
        int ret = (n < 0) ? 1 : (n >= MAXIMUM_CAPACITY) ? MAXIMUM_CAPACITY : n + 1;
        System.out.println("ret=" + ret);

        System.out.println("1|1 = " + (1 | 1));
        System.out.println("0|1 = " + (0 | 1));
        System.out.println("0|0 = " + (0 | 0));

        System.out.println("1&1 = " + (1 & 1));
        System.out.println("0&1 = " + (0 & 1));
        System.out.println("0&0 = " + (0 & 0));

        System.out.println((2 << 3) + "," + Integer.toBinaryString(2 << 3));
        System.out.println(Integer.toBinaryString(37));
    }
}
