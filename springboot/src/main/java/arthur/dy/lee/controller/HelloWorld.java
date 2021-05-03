//package arthur.dy.lee.controller;
//
//import arthur.dy.lee.model.BigObject;
//import arthur.dy.lee.service.BigObjectService;
//import arthur.dy.lee.weak.refeance.ArthurWeakHashMap;
//import com.taobao.hellostarter.service.HelloService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.List;
//import java.util.Map;
//import java.util.UUID;
//import java.util.function.Supplier;
//
///**
// * Created by arthur.dy.lee on 2018/4/1.
// */
//@RestController
//@EnableAutoConfiguration
//public class HelloWorld {
//
//    public static ThreadLocal<Integer> threadLocal = ThreadLocal.withInitial(new Supplier<Integer>() {
//        @Override
//        public Integer get() {
//            return 0;
//        }
//    });
//
//    @Autowired
//    private BigObjectService service;
//
//    @Autowired
//    HelloService helloService;
//
//    @RequestMapping("/hello2")
//    public String index2() {
//        return helloService.say("arthur");
//    }
//
//    //https://localhost:8080/hello
//    @RequestMapping("/hello")
//    public String index() {
//        /*byte[] b = new byte[1024 * 1024 * 5];
//        for (int i = 11; i < 21; i++) {
//            BigObject bigObject = new BigObject();
//            bigObject.setContent(b);
//            bigObject.setBak("5M");
//            service.insertBigObject(bigObject);
//        }*/
//        Map<String, BigObject> map = new ArthurWeakHashMap<>();
//        List<BigObject> list = service.listBigObject(0, 10);
//        for (BigObject bo : list) {
//            map.put(UUID.randomUUID().toString(), bo);
//        }
//        threadLocal.set(threadLocal.get() + 1);
//        //System.gc();
//        System.out.println("map size: " + map.size());
//        System.out.println("BigObject gced: " + BigObject.getBigObjectFinalizeCount());
//
//        StringBuilder s = new StringBuilder(256);
//        int i = 0;
//        for (BigObject bo : map.values()) {
//            s.append(bo.getId()).append("\r\n").append("</br>");
//            i++;
//        }
//        s.append("</br>").append("\r\n").append("\r\n").append("total count = ").append(i);
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        s.append(format.format(new Date())).append("</br>");
//        ;
//        s.append(threadLocal.get());
//        threadLocal.remove();
//        System.gc();
//        return s.toString();
//    }
//
//}
