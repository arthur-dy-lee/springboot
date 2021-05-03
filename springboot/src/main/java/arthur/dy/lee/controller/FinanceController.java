package arthur.dy.lee.controller;

import arthur.dy.lee.model.Finance;
import arthur.dy.lee.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.core.annotation.Order;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/6/25.
 */
@RestController
@EnableAutoConfiguration
@Order
public class FinanceController {

    @Autowired
    private FinanceService service;

    private static ThreadLocal threadLocal = ThreadLocal.withInitial(()-> new char[1024*1024]);

    @RequestMapping("/listFinance")
    public String listFinance() throws Exception {
        List<Finance> list = service.listFinace(null, null);
        StringBuilder ret = new StringBuilder(500);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(e -> ret.append(e.getConsumer() + "," + e.getConsumerproject() + "; "));
        }
//        List list1 = new ArrayList();
//        for (int i = 0; i < 500; i++) {
//            //threadLocal.set(new char[1024*1024*1]);
//            list1.add(new BigObj());
//        }
        return ret.toString();
    }

    @RequestMapping("/listFinance2")
    public String listFinance2() throws Exception {
        List<Finance> list = service.listFinace(null, null);
        StringBuilder ret = new StringBuilder(500);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(e -> ret.append(e.getConsumer() + "," + e.getConsumerproject() + "; "));
        }
        List list1 = new ArrayList();
        Thread thread = new Thread(()->{
            String threadName = Thread.currentThread().getName();
            System.out.println("Hello " + threadName);
            while (true){
                //threadLocal.set(new char[1024*1024*1]);
                list1.add(new char[1024 * 1024 * 10]);
            }
        });
        thread.start();
        return ret.toString();
    }

    @RequestMapping("/listFinance3")
    public String listFinance3() throws Exception {
        List<Finance> list = service.listFinace(null, null);
        StringBuilder ret = new StringBuilder(500);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(e -> ret.append(e.getConsumer() + "," + e.getConsumerproject() + "; "));
        }
        for (int i = 0; i < 500000; i++) {
            threadLocal.set(new char[1024 * 1024 * 10]);
        }
        return ret.toString();
    }

    @RequestMapping("/saveFinance")
    public String save() {
        Finance finance = new Finance();

        finance.setDeleteflag(false);
        long date = System.currentTimeMillis();
        finance.setConsumer("lee, data=" + date);
        finance.setFee(11f);

        String hostName = null;
        String currentIpAddress = null;
        try {
            hostName = InetAddress.getLocalHost().getHostName();
            currentIpAddress = InetAddress.getByName(hostName).getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

        finance.setBak(currentIpAddress);
        finance.setConsumerproject(currentIpAddress);
        service.insertOrUpdateFinace(finance);

        return finance.getId();
    }
}
