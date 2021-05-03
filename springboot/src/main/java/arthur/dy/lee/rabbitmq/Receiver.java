//package arthur.dy.lee.rabbitmq;
//
//import org.springframework.amqp.rabbit.annotation.RabbitHandler;
//import org.springframework.amqp.rabbit.annotation.RabbitListener;
//import org.springframework.stereotype.Component;
//
///**
// * Created by arthur.dy.lee on 2018/7/8.
// */
//@Component
//@RabbitListener(queues = "hello")
//public class Receiver {
//
//    @RabbitHandler
//    public void process(String hello) {
//        System.out.println("Receiver : " + hello);
//    }
//
//}