package arthur.dy.lee.consumer;

public class IntJobHandler implements JobHandler {

    @Override
    public void invoke(Job job) {

        System.out.println("Int消费 " + (job.getB() + job.getA()));

    }
}
