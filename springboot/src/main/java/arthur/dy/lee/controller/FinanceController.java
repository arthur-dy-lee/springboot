package arthur.dy.lee.controller;

import arthur.dy.lee.model.Coingecko;
import arthur.dy.lee.model.Finance;
import arthur.dy.lee.service.FinanceService;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.core.annotation.Order;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/25.
 */
@Slf4j
@RestController
@EnableAutoConfiguration
@Order
public class FinanceController {

    @Autowired
    private FinanceService service;

    private static ThreadLocal threadLocal = ThreadLocal.withInitial(() -> new char[1024 * 1024]);

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
        Map<String, Integer> map = new HashMap<>();
        map.put("totalItemsBought", 1);
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

    @RequestMapping("/getCoinList")
    public String getCoinList() throws Exception {
        StringBuilder ret = new StringBuilder(10240);
        Map<String, String> map = this.getCoinId();
        map.forEach((k, v) -> {
            ret.append(k).append(": ").append(v);
        });
        return ret.toString();
    }

    @RequestMapping("/getUsdt2")
    public String getUsdt2() throws Exception {
        String coinListUrl = "https://api.coingecko.com/api/v3/simple/price?ids=binance-peg-avalanche,kusama,dogecoin,eos,filecoin,talecraft,cryowar-token,bitrewards-token,huobi-token,symbol,theta-token,flower-solana,thorchain-erc20,wrapped-solana,basic-attention-token,ethereum-classic,maker,pancakeswap-token,binancecoin,ecash,internet-computer,wrapped-ust,ethereum,sushi,zcash,hedera-hashgraph,near,shiba-inu,zilliqa,axie-infinity,flow,cardano,icon,waves,compound-governance-token,nem,zencash,secret,ravencoin,hymnode,avalanche-2,adventure-gold,chiliz,elrond-erd-2,stox,tribe-2,ripple,theta-fuel,tron-bsc,dash,calamari-network,digibyte,0x,bitcoin-cash-sv,bitcoin-cash,dydx,perpetual-protocol,polkadot,chainlink,omisego,celo,qtum,wrapped-terra,bitcoin,decred,gallant,bitcoin-gold,matic-network,litecoin,fitmin,aave,bittorrent-2,one-hundred-coin-2,the-graph,klay-token,serum,universe-token,wemix-token,genesis-mana,quant-network,xdce-crowd-sale,oec-binance-coin,stellar,ankr,cosmos,mina-protocol,yearn-finance,algorand,tezos&vs_currencies=usd";

        HttpRequest request = HttpUtil.createGet(coinListUrl);
        request.header("Content-Type", "application/json");

        // 3、执行请求
        log.info("\r\n=> get , call url: {} , request: {} \r\n", coinListUrl, JSONUtil.toJsonStr(request));
        HttpResponse response = null;
        try {
            response = request.execute();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        log.info("\r\n=> get , call url: {} , response : {}\r\n", coinListUrl, JSONUtil.toJsonStr(response.body()));
        return JSONUtil.toJsonStr(response.body());
    }

    @RequestMapping("/getUsdt3")
    public String getUsdt3() throws Exception {
        String coinListUrl = "https://api.coingecko.com/api/v3/simple/price?ids=litecoin%2Cbitcoin%2Coec-binance-coin&vs_currencies=usd";

        HttpRequest request = HttpUtil.createGet(coinListUrl);
        request.header("Content-Type", "application/json");

        // 3、执行请求
        log.info("\r\n=> get , call url: {} , request: {} \r\n", coinListUrl, JSONUtil.toJsonStr(request));
        HttpResponse response = null;
        try {
            response = request.execute();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        log.info("\r\n=> get , call url: {} , response : {}\r\n", coinListUrl, JSONUtil.toJsonStr(response.body()));



        return JSONUtil.toJsonStr(response.body());
    }

    @RequestMapping("/getUsdt")
    public String getUsdt() throws Exception {

        StringBuilder ret = new StringBuilder(10240);

        StringBuilder coinListUrl = new StringBuilder("https://api.coingecko.com/api/v3/simple/price?ids=");

        Map<String, String> map = this.getCoinId();
        StringBuilder coinId = new StringBuilder();

        Map<String, String> fakeMap = new HashMap<>();
        map.forEach((k, v) -> {
            if (k.equalsIgnoreCase("bnb") || k.equalsIgnoreCase("btc")
                    || k.equalsIgnoreCase("eth")) {
                coinListUrl.append(v).append(",");
                fakeMap.put(k, v);
            }
        });
        coinListUrl.deleteCharAt(coinListUrl.lastIndexOf(","));
        coinListUrl.append("&vs_currencies=usd");

        HttpRequest request = HttpUtil.createGet(coinListUrl.toString());
        request.header("Content-Type", "application/json");

        // 3、执行请求
        log.info("\r\n=> get , call url: {} , request: {} \r\n", coinListUrl, JSONUtil.toJsonStr(request));
        HttpResponse response = null;
        try {
            response = request.execute();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        log.info("\r\n=> get , call url: {} , response : {}\r\n", coinListUrl, JSONUtil.toJsonStr(response.body()));
        //ret.append(JSONUtil.toJsonStr(response.body()));

        HttpRequest request2 = HttpUtil.createGet("https://api.coingecko.com/api/v3/ping");
        request.header("Content-Type", "application/json");
        response = request.execute();
        log.info("\r\n=> get , call url: {} , response : {}\r\n", "http://api.coingecko.com/api/v3/ping",
                JSONUtil.toJsonStr(response.body()));

        Map<String, BigDecimal> resultMap = new HashMap<>();
        JSONObject jsonObject = JSONUtil.parseObj(response.body());
        for (int i = 0; i < jsonObject.size(); i++) {
            fakeMap.forEach((k, v) -> {
                if (jsonObject.get(v) != null) {
                    JSONObject jo = (JSONObject) jsonObject.get(v);
                    BigDecimal b = new BigDecimal(jo.get("usd").toString());
                    resultMap.put(k, b);
                    ret.append(k).append(":").append(b);
                }
            });
        }


        log.error("\r\r-----------");
        log.error(JSONUtil.toJsonStr(resultMap));

        return ret.toString();
    }

    private Map<String, String> getCoinId() {
        String url = "https://api.coingecko.com/api/v3";
        String coinListUrl = url + "/coins/list";

        HttpRequest request = HttpUtil.createGet(coinListUrl);
        request.header("Content-Type", "application/json");

        coinListUrl += "?include_platform=true";
        // 3、执行请求
        log.info("\r\n=> get , call url: {} , request: {} \r\n", coinListUrl, JSONUtil.toJsonStr(request));
        HttpResponse response = null;
        try {
            response = request.execute();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }

        //log.info("\r\n=> get , call url: {} , response : {}\r\n", coinListUrl, JSONUtil.toJsonStr(response.body()));

        List<Coingecko> list = JSONUtil.toList(response.body(), Coingecko.class);
        Map<String, String> map = new HashMap<>();
        Map<String, String> repeateMap = new HashMap<>();
        for (Coingecko coin : list) {
            if (map.containsKey(coin.getSymbol())) {
                if (coin.getSymbol().contains("usdt") || coin.getId().contains("usdt")) {
                    repeateMap.put(coin.getSymbol(), JSONUtil.toJsonStr(coin));
                    log.error(JSONUtil.toJsonStr(coin));
                }

            }
            map.put(coin.getSymbol(), JSONUtil.toJsonStr(coin));
        }
        log.error("-----------");
        log.error(JSONUtil.toJsonStr(repeateMap));

        return map;
    }
}
