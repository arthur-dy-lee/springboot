package arthur.dy.lee.consumer;

public class StringJobHandler implements JobHandler {


    @Override
    public void invoke(Job job) {

        System.out.println("string消费 " + job.getStr());


    }


}
