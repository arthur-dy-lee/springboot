package arthur.dy.lee.controller;

import arthur.dy.lee.model.Finance;
import arthur.dy.lee.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.core.annotation.Order;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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



    @RequestMapping("/listFinance2")
    public String listFinance2() throws Exception {

        StringBuilder ret = new StringBuilder(500);
        List<Finance> list1 = this.service.listFinace("test1",null, null);
        List<Finance> list2 = this.service.listFinace2("test2",null, null);
        List<Finance> list3 = this.service.listFinace3("test3",null, null);
        List<Finance> list4 = this.service.listFinace4("test4",null, null);
        list1.forEach(e -> ret.append("---datasource1---, "+e.getConsumer() + ",====" + e.getConsumerproject() + "====; " + e.getCreatedate() + "/n, "));
        list2.forEach(e -> ret.append("---datasource2---, "+e.getConsumer() + ",====" + e.getConsumerproject() + "====; " + e.getCreatedate() + "/n, "));
        list3.forEach(e -> ret.append("---datasource3---, "+e.getConsumer() + ",====" + e.getConsumerproject() + "====; " + e.getCreatedate() + "/n, "));
        list4.forEach(e -> ret.append("---datasource4---, "+e.getConsumer() + ",====" + e.getConsumerproject() + "====; " + e.getCreatedate() + "/n, "));


        return ret.toString();
    }


    @RequestMapping("/listFinance")
    public String listFinance(@RequestParam(name = "ds") String ds) throws Exception {
        List<Finance> list = this.service.listFinace(ds,null, null);
        StringBuilder ret = new StringBuilder(500);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate()));
        }

        return ret.toString();
    }
}
