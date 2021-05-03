package arthur.dy.lee.red.envelope;

import java.math.BigDecimal;
import java.security.SecureRandom;
import java.text.DecimalFormat;

/**
 * 带范围的红包，最小值6和最大值为12
 *
 * 思路：
 * 1、剩余金额=总值-抽奖次数*最小值
 * 2、剩余金额和次数当作红包算法，计算返回抽奖值，最后再加上最小值即可。
 */
public class RangeRedEnvelope {

    public static double minRange = 6; //红包最大值
    public static double maxRange = 12; //红包最大值
    public static DecimalFormat df = new DecimalFormat("#.00");

    public static void getWrappedRandomMoney(RedPackage redPackage) {

        //加上范围后，不同点1
        redPackage.remainMoney = redPackage.remainMoney - redPackage.remainSize * minRange;
        double money;
        BigDecimal count = new BigDecimal(0);
        while (redPackage.remainSize >0) {
            money = (double) Math.floor((getRandomMoney(redPackage) + minRange) * 100) / 100;
            System.out.print(money + " ");
            count = count.add(new BigDecimal(money));

        }
        System.out.println(" |totalCount=" + df.format(count));
    }

    public static double getRandomMoney(RedPackage redPackage) {
        // remainSize 剩余的红包数量
        // remainMoney 剩余的钱
        if (redPackage.remainSize == 1) {
            redPackage.remainSize--;
            return (double) Math.floor(redPackage.remainMoney * 100) / 100;
        }
        double min = 0.01;
        double max = (redPackage.remainMoney / redPackage.remainSize) * 2;

        SecureRandom random = new SecureRandom();
        double money;

        if (max > (maxRange - minRange)) { //加上范围后，不同点2
            money = getRangeNumber(maxRange - minRange - 1, maxRange - minRange);

        } else {
            money = random.nextDouble() * max;
        }

        if (money < min) {
            money = min;
        }
        money = (double) Math.floor(money * 100) / 100;

        redPackage.remainSize--;
        redPackage.remainMoney = redPackage.remainMoney - money;
        return money;
    }

    public static double getRangeNumber(double min, double max) {
        SecureRandom random = new SecureRandom();
        return random.nextDouble() * (max - min) + min;
    }

    public static void main(String[] args) {

        for (int i = 0; i < 20; i++) {
            RedPackage redPackage = new RedPackage(10, 100);
            while (redPackage.remainSize != 0) {
                RangeRedEnvelope.getWrappedRandomMoney(redPackage);
            }
            //System.out.println("-------");
        }
    }
}
