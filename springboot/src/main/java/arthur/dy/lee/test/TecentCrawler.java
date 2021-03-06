package arthur.dy.lee.test;

import com.google.common.base.Stopwatch;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by arthur.dy.lee on 2018/3/10.
 */
public class TecentCrawler {

    public String sendGet(String url, String param) {
        String result = "";
        String urlName = url + "?" + param;
        try {
            URL realURL = new URL(urlName);
            URLConnection conn = realURL.openConnection();
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36");
            conn.connect();
            Map<String, List<String>> map = conn.getHeaderFields();
            /*for (String s : map.keySet()) {
                System.out.println(s + "-->" + map.get(s));
            }*/
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
            String line;
            while ((line = in.readLine()) != null) {
                result += "\n" + line;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * ??????http???????????????????????????
     *
     * @param url
     * @param param
     * @return
     */
    public String sendPost(String url, String param) {
        String result = "";
        try {
            URL realUrl = new URL(url);
            URLConnection conn = realUrl.openConnection();
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36");
            //post??????????????????
            conn.setDoOutput(true);
            conn.setDoInput(true);
            PrintWriter out = new PrintWriter(conn.getOutputStream());
            out.print(param);
            out.flush();
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
            String line;
            while ((line = in.readLine()) != null) {
                result += "\n" + line;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * ?????????????????????????????????
     *
     * @param groupId
     * @return
     */
    public JSONObject getTecentCloudData(int groupId) {
        String sendRecvGet = this.sendGet("https://cloud.tencent.com/act/campus/group/detail", "group=" + groupId);
        if (StringUtils.isBlank(sendRecvGet)) {
            return null;
        }
        Document doc = Jsoup.parse(sendRecvGet);
        if (doc == null) {
            return null;
        }
        Elements elements = doc.getElementsByTag("script");
        if (elements == null || elements.get(0) == null) {
            return null;
        }
        Element element = elements.get(0);
        String content = element.toString();
        if (StringUtils.isBlank(content)) {
            return null;
        }
        content = content.replace("<script>", "")
                .replace("</script>", "")
                .replace("window.__INITIAL_STATE__ =", "")
                .trim();

        JSONObject object = JSONObject.fromObject(content);
        if (object.getJSONObject("actData") == null) {
            return null;
        }
        JSONObject actData = object.getJSONObject("actData");
        if (actData == null) {
            return null;
        }
        return actData;
    }

    /**
     * ????????????id
     *
     * @param actData
     * @return
     */
    public String getCreator(int groupId, JSONObject actData) {
        String creator;
        try {
            creator = actData.getString("creator");
        } catch (JSONException e) {
            System.out.println("groupId=" + groupId + "???????????????????????????????????????");
            return null;
        }
        if (actData.getString("creator") == null || StringUtils.isBlank(creator)) {
            return null;
        }
        return creator;
    }

    /**
     * ?????????????????????id
     *
     * @param actData
     * @return
     */
    public String getUsers(JSONObject actData) {
        String users;
        try {
            users = actData.getString("users");
        } catch (JSONException e) {
            System.out.println("?????????????????????????????????");
            return null;
        }
        if (actData.getString("users") == null || StringUtils.isBlank(users)) {
            return null;
        }

        if (actData.getString("users") == null || StringUtils.isNotBlank(users)) {
            users = users.replace("[", "").
                    replace("]", "").
                    replace("\"", "");
        }
        return users;

    }

    /**
     * ?????????????????????
     *
     * @param users
     * @return
     */
    public int countTeamNumber(String users) {
        int paidUserNum = 0;
        int teamNumber = 1; //????????????1
        if (StringUtils.isNotBlank(users)) {
            paidUserNum = users.split(",").length;
            teamNumber = paidUserNum + teamNumber;
        }
        return teamNumber;
    }

    /**
     * ???????????????????????????
     *
     * @param groupId
     * @param teamNumber
     * @param creator
     * @param users
     * @return
     */
    public String buildWriteFileContent(int groupId, int teamNumber, String creator, String users) {
        StringBuilder groupContent = new StringBuilder(64);
        groupContent.append(groupId).append(",").append(teamNumber).append(",").append(creator).append("#").append(",");
        if (StringUtils.isNotBlank(users)) {
            groupContent.append(users.replace(",", "#"));
        } else {
            groupContent.append(users);
        }
        groupContent.append("#");
        return groupContent.toString();
    }

    /**
     * ????????????????????????????????????countMap???????????????
     *
     * @param filePath
     * @param countMap
     * @param groupId
     * @return
     */
    public Map<Integer, Integer> writeDataAndCountMap(String filePath, Map<Integer, Integer> countMap,
                                                      int groupId) {

        JSONObject actData = getTecentCloudData(groupId);
        if (actData == null) {
            return countMap;
        }
        String creator = getCreator(groupId, actData);
        if (StringUtils.isBlank(creator)) {
            return countMap;
        }
        String users = getUsers(actData);

        int teamNumber = countTeamNumber(users);
        String writeContent = buildWriteFileContent(groupId, teamNumber, creator, users);

        this.writeFile(filePath, writeContent);

        //Integer num = countMap.get("???????????????" + teamNumber); //???????????????????????????
        Integer num = countMap.get(teamNumber);
        if (num == null) {
            num = 0;
        }
        countMap.put(teamNumber, ++num);

        return countMap;
    }

    /**
     * ????????????????????????
     *
     * @param filePath
     * @param content
     */
    public static void writeFile(String filePath, String content) {
        String bOM = new String(new byte[] { (byte) 0xEF, (byte) 0xBB, (byte) 0xBF });

        //FileWriter fw = null;
        BufferedWriter fw = null;
        try {
            //??????????????????????????????????????????????????????????????????????????????
            File f = new File(filePath);
            //fw = new FileWriter(f, true);
            fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f, true), "UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        PrintWriter pw = new PrintWriter(fw);
        pw.println(bOM + content);
        pw.flush();
        try {
            fw.flush();
            pw.close();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * ????????????
     *
     * @param filePath
     * @param countNumberMap
     */
    public void writeCountMap2FilesEnd(String filePath, Map<Integer, Integer> countNumberMap) {
        this.writeFile(filePath, "\r\n");
        this.writeFile(filePath, "========????????????==========");
        for (Map.Entry<Integer, Integer> entry : countNumberMap.entrySet()) {
            StringBuilder countNumbers = new StringBuilder(24);
            countNumbers.append("???????????????").append(entry.getKey()).append("?????????").append(" ??? ").append(entry.getValue())
                    .append(" ??????");
            this.writeFile(filePath, countNumbers.toString());
        }
    }

    /**
     * ????????????
     *
     * @param fileName
     * @return
     */
    public static boolean deleteFile(String fileName) {
        File file = new File(fileName);
        // ????????????????????????????????????????????????????????????????????????????????????
        if (file.exists() && file.isFile()) {
            if (file.delete()) {
                System.out.println("??????????????????" + fileName + "?????????");
                return true;
            } else {
                System.out.println("??????????????????" + fileName + "?????????");
                return false;
            }
        } else {
            System.out.println("???????????????????????????" + fileName + "????????????");
            return false;
        }
    }

    //??????????????????
    public Callable<Map<Integer, Integer>> getTask(String filePath, Map<Integer, Integer> countMap, int groupId) {
        Callable<Map<Integer, Integer>> task = new Callable<Map<Integer, Integer>>() {
            @Override
            public Map<Integer, Integer> call() throws Exception {
                TecentCrawler crawler = new TecentCrawler();
                crawler.writeDataAndCountMap(filePath, countMap, groupId);
                return countMap;
            }
        };
        return task;
    }

    public Map<Integer, Integer> readFileContent(String path, Map<Integer, Integer> map) {
        BufferedReader br = null;
        String readLine = null;
        try {
            br = new BufferedReader(new FileReader(path));
            while ((readLine = br.readLine()) != null) {
                if (StringUtils.isBlank(readLine)) {
                    continue;
                }
                String[] contentArray = readLine.split(",");
                if (contentArray == null || contentArray.length < 2) {
                    continue;
                }
                String number = contentArray[1];
                if (!isNumeric(contentArray[1])) {
                    continue;
                }
                Integer teamNumber = 0;
                teamNumber = Integer.valueOf(number);

                if (map.get(teamNumber) != null) {
                    int total = map.get(teamNumber);
                    map.put(teamNumber, ++total);
                } else {
                    map.put(teamNumber, 1);
                }

            }
            br.close();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            br = null;
        }

        return map;
    }

    public boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        if (!isNum.matches()) {
            return false;
        }
        return true;
    }

    /**
     * ?????????????????????
     *
     * @param filePath
     * @param retMap
     */
    public void singleThreadCount(String filePath, Map<Integer, Integer> retMap,
                                  final int crawlerBeginGroupId, final int crawlerEnGroupId) {
        Stopwatch stopwatch = Stopwatch.createStarted();
        Map<Integer, Integer> countMap = new ConcurrentHashMap<>();
        for (int groupId = crawlerBeginGroupId; groupId <= crawlerEnGroupId; groupId++) {
            //countMap = this.writeDataAndCountMap(filePath, countMap, groupId);
            countMap = this.writeDataAndCountMap(filePath, countMap, groupId);
        }
        retMap = this.readFileContent(filePath, retMap);
        this.writeCountMap2FilesEnd(filePath, retMap);

        long nanos = stopwatch.elapsed(TimeUnit.NANOSECONDS);
        long second = TimeUnit.NANOSECONDS.toSeconds(nanos);
        writeFile(filePath, "????????????: " + second
                + ", ?????????????????????????????????groupId=" + crawlerBeginGroupId + " ??????????????? groupId=" + crawlerEnGroupId);
        System.out.println("????????????: " + second);

        //?????????????????????????????????????????????
        writeFile(filePath, "\r\n?????????????????????------------------------------");
        this.writeCountMap2FilesEnd(filePath, retMap);

    }

    /**
     * ?????????????????????
     *
     * @param filePath
     * @param retMap
     * @throws InterruptedException
     * @throws ExecutionException
     */
    public void multiThreadCount(String filePath, Map<Integer, Integer> retMap, final int crawlerBeginGroupId,
                                 final int crawlerEnGroupId) throws InterruptedException, ExecutionException {

        Stopwatch stopwatch = Stopwatch.createStarted();
        TecentCrawler crawler = new TecentCrawler();

        ExecutorService exec = Executors.newFixedThreadPool(10);
        CompletionService<Map<Integer, Integer>> completionService =
                new ExecutorCompletionService<Map<Integer, Integer>>(exec);
        for (int groupId = crawlerBeginGroupId; groupId <= crawlerEnGroupId; groupId++) {
            TecentCrawler tecentCrawler = new TecentCrawler();
            Map<Integer, Integer> contentMap = new ConcurrentHashMap<>();
            completionService.submit(tecentCrawler.getTask(filePath, contentMap, groupId));
        }
        for (int groupId = crawlerBeginGroupId; groupId <= crawlerEnGroupId; groupId++) {
            //???????????????????????????????????????????????? Future??????????????????????????????????????????????????????
            Future<Map<Integer, Integer>> future = completionService.take();
            Map<Integer, Integer> tempMap = future.get();

            for (Map.Entry<Integer, Integer> entry : tempMap.entrySet()) {
                Integer key = entry.getKey();
                if (key == null) {
                    continue;
                }
                Integer val = entry.getValue();
                if (retMap.get(key) != null) {
                    retMap.put(key, retMap.get(key) + val);
                } else {
                    retMap.put(key, 1);
                }
            }
        }
        System.out.println("retMap???" + retMap);
        crawler.writeCountMap2FilesEnd(filePath, retMap);
        exec.shutdown();

        long nanos = stopwatch.elapsed(TimeUnit.NANOSECONDS);
        long second = TimeUnit.NANOSECONDS.toSeconds(nanos);
        writeFile(filePath, "????????????: " + second
                + ", ?????????????????? ???????????????groupId=" + crawlerBeginGroupId + " ??????????????? groupId=" + crawlerEnGroupId);
        System.out.println("????????????: " + second);

        //        writeFile(filePath, "\r\n??????????????????????????????----------------------");
        //        retMap = new TreeMap<Integer, Integer>(new Comparator<Integer>() {
        //            public int compare(Integer obj1, Integer obj2) {
        //                return obj1.compareTo(obj2);
        //            }
        //        });
        //        retMap = this.readFileContent(filePath, retMap);
        //        this.writeCountMap2FilesEnd(filePath, retMap);
    }

    public static void main(String[] args) throws Exception {
        final String filePath = "E:\\TecentCrawler-201080310.csv";
        TecentCrawler.deleteFile(filePath);

        TecentCrawler crawler = new TecentCrawler();
        final int crawlerBeginGroupId = 20930;
        final int crawlerEnGroupId = 23000;

        String title = "groupId,????????????,??????,??????";
        TecentCrawler.writeFile(filePath, title);

        Map<Integer, Integer> retMap = new TreeMap<Integer, Integer>(new Comparator<Integer>() {
            public int compare(Integer obj1, Integer obj2) {
                return obj1.compareTo(obj2);
            }
        });

        //crawler.singleThreadCount(filePath, retMap, crawlerBeginGroupId, crawlerEnGroupId);
        crawler.multiThreadCount(filePath, retMap, crawlerBeginGroupId, crawlerEnGroupId);

    }
}



