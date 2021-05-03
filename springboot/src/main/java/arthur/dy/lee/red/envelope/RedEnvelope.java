package arthur.dy.lee.red.envelope;

import java.math.BigDecimal;
import java.security.SecureRandom;
import java.text.DecimalFormat;

/**
 * 微信红包算法
 * <p>
 * 随机，额度在0.01和(剩余平均值*2)之间。
 * 例如：发100块钱，总共10个红包，那么平均值是10块钱一个，那么发出来的红包的额度在0.01元～20元之间波动。
 * 当前面3个红包总共被领了40块钱时，剩下60块钱，总共7个红包，那么这7个红包的额度在：0.01～（60/7*2）=17.14之间。
 * 注意：这里的算法是每被抢一个后，剩下的会再次执行上面的这样的算法
 * 这样算下去，会超过最开始的全部金额，因此到了最后面如果不够这么算，那么会采取如下算法：保证剩余用户能拿到最低1分钱即可。
 * 如果前面的人手气不好，那么后面的余额越多，红包额度也就越多，因此实际概率一样的。
 */
public class RedEnvelope {

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
        double money = random.nextDouble() * max;
        if (money < min) {
            money = min;
        }

        money = (double) Math.floor(money * 100) / 100;

        redPackage.remainSize--;
        redPackage.remainMoney = redPackage.remainMoney - money;

        return money;
    }

    public static void main(String[] args) {
        DecimalFormat df = new DecimalFormat("#.00");

        for (int i = 0; i < 10; i++) {
            RedPackage redPackage = new RedPackage(10, 100);

            BigDecimal count = new BigDecimal(0);
            while (redPackage.remainSize != 0) {
                double money = RedEnvelope.getRandomMoney(redPackage);
                System.out.print(money + " ");
                count = count.add(new BigDecimal(money));
            }
            System.out.println(" |totalCount=" + df.format(count));
            //System.out.println("-------");

        }
    }
}
