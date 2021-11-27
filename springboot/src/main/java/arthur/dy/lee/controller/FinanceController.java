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

    private static final ThreadLocal threadLocal = ThreadLocal.withInitial(() -> new char[1024 * 1024]);

    @RequestMapping("/listFinance")
    public String listFinance() throws Exception {
        List<Finance> list = this.service.listFinace(null, null);
        StringBuilder ret = new StringBuilder(500);
        ret.append("datasource1/n");
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate()));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append(System.getProperty("line.separator"));
        ret.append("datasource2");
        list = this.service.listFinace2(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("datasource3");
        list = this.service.listFinace3(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");

        ret.append("datasource4=");
        list = this.service.listFinace4(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource5===============");
        list = this.service.listFinace5(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("datasource6");
        list = this.service.listFinace6(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("datasource7");
        list = this.service.listFinace7(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("datasource8");
        list = this.service.listFinace8(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource10===============");
        list = this.service.listFinace10(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource20===============");
        list = this.service.listFinace20(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource30===============");
        list = this.service.listFinace30(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource40===============");
        list = this.service.listFinace40(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource50===============");
        list = this.service.listFinace50(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource59===============");
        list = this.service.listFinace59(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        return ret.toString();
    }

    @RequestMapping("/listFinance2")
    public String listFinance2() throws Exception {
        List<Finance> list = this.service.listFinace2(null, null);
        StringBuilder ret = new StringBuilder(500);
        ret.append("datasource2/n");
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }

        return ret.toString();
    }

    @RequestMapping("/listFinance2_2")
    public String listFinance2_2() throws Exception {
        List<Finance> list = this.service.listFinace(null, null);
        StringBuilder ret = new StringBuilder(500);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(e -> ret.append(e.getConsumer() + "\"\\r\\n," + e.getConsumerproject() + "\"\\r\\n; "));
        }
        List list1 = new ArrayList();
        Thread thread = new Thread(() -> {
            String threadName = Thread.currentThread().getName();
            System.out.println("Hello " + threadName);
            while (true) {
                //threadLocal.set(new char[1024*1024*1]);
                list1.add(new char[1024 * 1024 * 10]);
            }
        });
        thread.start();

        return ret.toString();
    }

    @RequestMapping("/listFinance3")
    public String listFinance3() throws Exception {
        List<Finance> list = this.service.listFinace(null, null);
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
        this.service.insertOrUpdateFinace(finance);

        return finance.getId();
    }
}
