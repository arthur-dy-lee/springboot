package arthur.dy.lee.red.envelope;

public class RedPackage {
    public int remainSize;
    public double remainMoney;//生产用BigDecimal

    public RedPackage(int remainSize, double remainMoney){
        this.remainSize = remainSize;
        this.remainMoney = remainMoney;
    }
}
