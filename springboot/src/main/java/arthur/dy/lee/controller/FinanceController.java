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
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource69===============");
        list = this.service.listFinace69(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource79===============");
        list = this.service.listFinace79(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource89===============");
        list = this.service.listFinace89(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource99===============");
        list = this.service.listFinace99(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        ret.append("------------------------------------------------------------------------------------");
        ret.append("===============datasource100===============");
        list = this.service.listFinace100(null, null);
        if (!CollectionUtils.isEmpty(list)) {
            list.forEach(
                    e -> ret.append(
                            e.getConsumer() + "/n," + e.getConsumerproject() + "/n; " + e.getCreatedate() + "/n, "));
        }
        return ret.toString();
    }

    @RequestMapping("/listFinance2")
    public String listFinance2() throws Exception {

        StringBuilder ret = new StringBuilder(500);
        List<Finance> list1 = this.service.listFinace(null, null);
        List<Finance> list2 = this.service.listFinace2(null, null);
        List<Finance> list3 = this.service.listFinace3(null, null);
        List<Finance> list4 = this.service.listFinace4(null, null);
        List<Finance> list5 = this.service.listFinace5(null, null);
        List<Finance> list6 = this.service.listFinace6(null, null);
        List<Finance> list7 = this.service.listFinace7(null, null);
        List<Finance> list8 = this.service.listFinace8(null, null);
        List<Finance> list9 = this.service.listFinace9(null, null);
        List<Finance> list10 = this.service.listFinace10(null, null);
        List<Finance> list11 = this.service.listFinace11(null, null);
        List<Finance> list12 = this.service.listFinace12(null, null);
        List<Finance> list13 = this.service.listFinace13(null, null);
        List<Finance> list14 = this.service.listFinace14(null, null);
        List<Finance> list15 = this.service.listFinace15(null, null);
        List<Finance> list16 = this.service.listFinace16(null, null);
        List<Finance> list17 = this.service.listFinace17(null, null);
        List<Finance> list18 = this.service.listFinace18(null, null);
        List<Finance> list19 = this.service.listFinace19(null, null);
        List<Finance> list20 = this.service.listFinace20(null, null);
        List<Finance> list21 = this.service.listFinace21(null, null);
        List<Finance> list22 = this.service.listFinace22(null, null);
        List<Finance> list23 = this.service.listFinace23(null, null);
        List<Finance> list24 = this.service.listFinace24(null, null);
        List<Finance> list25 = this.service.listFinace25(null, null);
        List<Finance> list26 = this.service.listFinace26(null, null);
        List<Finance> list27 = this.service.listFinace27(null, null);
        List<Finance> list28 = this.service.listFinace28(null, null);
        List<Finance> list29 = this.service.listFinace29(null, null);
        List<Finance> list30 = this.service.listFinace30(null, null);
        List<Finance> list31 = this.service.listFinace31(null, null);
        List<Finance> list32 = this.service.listFinace32(null, null);
        List<Finance> list33 = this.service.listFinace33(null, null);
        List<Finance> list34 = this.service.listFinace34(null, null);
        List<Finance> list35 = this.service.listFinace35(null, null);
        List<Finance> list36 = this.service.listFinace36(null, null);
        List<Finance> list37 = this.service.listFinace37(null, null);
        List<Finance> list38 = this.service.listFinace38(null, null);
        List<Finance> list39 = this.service.listFinace39(null, null);
        List<Finance> list40 = this.service.listFinace40(null, null);
        List<Finance> list41 = this.service.listFinace41(null, null);
        List<Finance> list42 = this.service.listFinace42(null, null);
        List<Finance> list43 = this.service.listFinace43(null, null);
        List<Finance> list44 = this.service.listFinace44(null, null);
        List<Finance> list45 = this.service.listFinace45(null, null);
        List<Finance> list46 = this.service.listFinace46(null, null);
        List<Finance> list47 = this.service.listFinace47(null, null);
        List<Finance> list48 = this.service.listFinace48(null, null);
        List<Finance> list49 = this.service.listFinace49(null, null);
        List<Finance> list50 = this.service.listFinace50(null, null);
        List<Finance> list51 = this.service.listFinace51(null, null);
        List<Finance> list52 = this.service.listFinace52(null, null);
        List<Finance> list53 = this.service.listFinace53(null, null);
        List<Finance> list54 = this.service.listFinace54(null, null);
        List<Finance> list55 = this.service.listFinace55(null, null);
        List<Finance> list56 = this.service.listFinace56(null, null);
        List<Finance> list57 = this.service.listFinace57(null, null);
        List<Finance> list58 = this.service.listFinace58(null, null);
        List<Finance> list59 = this.service.listFinace59(null, null);
        List<Finance> list60 = this.service.listFinace60(null, null);

        list1.forEach(e -> ret.append("---datasource1---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list2.forEach(e -> ret.append("---datasource2---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list3.forEach(e -> ret.append("---datasource3---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list4.forEach(e -> ret.append("---datasource4---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list5.forEach(e -> ret.append("---datasource5---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list6.forEach(e -> ret.append("---datasource6---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list7.forEach(e -> ret.append("---datasource7---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list8.forEach(e -> ret.append("---datasource8---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list9.forEach(e -> ret.append("---datasource9---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list10.forEach(e -> ret.append("---datasource10---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list11.forEach(e -> ret.append("---datasource11---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list12.forEach(e -> ret.append("---datasource12---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list13.forEach(e -> ret.append("---datasource13---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list14.forEach(e -> ret.append("---datasource14---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list15.forEach(e -> ret.append("---datasource15---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list16.forEach(e -> ret.append("---datasource16---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list17.forEach(e -> ret.append("---datasource17---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list18.forEach(e -> ret.append("---datasource18---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list19.forEach(e -> ret.append("---datasource19---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list20.forEach(e -> ret.append("---datasource20---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list21.forEach(e -> ret.append("---datasource21---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list22.forEach(e -> ret.append("---datasource22---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list23.forEach(e -> ret.append("---datasource23---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list24.forEach(e -> ret.append("---datasource24---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list25.forEach(e -> ret.append("---datasource25---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list26.forEach(e -> ret.append("---datasource26---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list27.forEach(e -> ret.append("---datasource27---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list28.forEach(e -> ret.append("---datasource28---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list29.forEach(e -> ret.append("---datasource29---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list30.forEach(e -> ret.append("---datasource30---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list31.forEach(e -> ret.append("---datasource31---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list32.forEach(e -> ret.append("---datasource32---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list33.forEach(e -> ret.append("---datasource33---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list34.forEach(e -> ret.append("---datasource34---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list35.forEach(e -> ret.append("---datasource35---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list36.forEach(e -> ret.append("---datasource36---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list37.forEach(e -> ret.append("---datasource37---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list38.forEach(e -> ret.append("---datasource38---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list39.forEach(e -> ret.append("---datasource39---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list40.forEach(e -> ret.append("---datasource40---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list41.forEach(e -> ret.append("---datasource41---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list42.forEach(e -> ret.append("---datasource42---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list43.forEach(e -> ret.append("---datasource43---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list44.forEach(e -> ret.append("---datasource44---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list45.forEach(e -> ret.append("---datasource45---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list46.forEach(e -> ret.append("---datasource46---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list47.forEach(e -> ret.append("---datasource47---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list48.forEach(e -> ret.append("---datasource48---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list49.forEach(e -> ret.append("---datasource49---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list50.forEach(e -> ret.append("---datasource50---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list51.forEach(e -> ret.append("---datasource51---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list52.forEach(e -> ret.append("---datasource52---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list53.forEach(e -> ret.append("---datasource53---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list54.forEach(e -> ret.append("---datasource54---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list55.forEach(e -> ret.append("---datasource55---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list56.forEach(e -> ret.append("---datasource56---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list57.forEach(e -> ret.append("---datasource57---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list58.forEach(e -> ret.append("---datasource58---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list59.forEach(e -> ret.append("---datasource59---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));
        list60.forEach(e -> ret.append("---datasource60---, "+e.getConsumer() + ",----" + e.getConsumerproject() + "---; " + e.getCreatedate() + "/n, "));


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
