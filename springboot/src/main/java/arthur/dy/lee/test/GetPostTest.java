//package arthur.dy.lee.test;
//
//import net.sf.json.JSONException;
//import net.sf.json.JSONObject;
//import org.apache.commons.lang.StringUtils;
//import org.jsoup.Jsoup;
//import org.jsoup.nodes.Document;
//import org.jsoup.nodes.Element;
//import org.jsoup.select.Elements;
//
//import java.io.BufferedReader;
//import java.io.BufferedWriter;
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.io.OutputStreamWriter;
//import java.io.PrintWriter;
//import java.net.URL;
//import java.net.URLConnection;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
///**
// * Hello world!
// */
//class GetPostTest {
//
//    public static String sendGet(String url, String param) {
//        String result = "";
//        String urlName = url + "?" + param;
//        try {
//            URL realURL = new URL(urlName);
//            URLConnection conn = realURL.openConnection();
//            conn.setRequestProperty("accept", "*/*");
//            conn.setRequestProperty("connection", "Keep-Alive");
//            conn.setRequestProperty("user-agent",
//                    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36");
//            conn.connect();
//            Map<String, List<String>> map = conn.getHeaderFields();
//            /*for (String s : map.keySet()) {
//                System.out.println(s + "-->" + map.get(s));
//            }*/
//            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
//            String line;
//            while ((line = in.readLine()) != null) {
//                result += "\n" + line;
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
//
//    public static String sendPost(String url, String param) {
//        String result = "";
//        try {
//            URL realUrl = new URL(url);
//            URLConnection conn = realUrl.openConnection();
//            conn.setRequestProperty("accept", "*/*");
//            conn.setRequestProperty("connection", "Keep-Alive");
//            conn.setRequestProperty("user-agent",
//                    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36");
//            //post设置如下两行
//            conn.setDoOutput(true);
//            conn.setDoInput(true);
//            PrintWriter out = new PrintWriter(conn.getOutputStream());
//            out.print(param);
//            out.flush();
//            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
//            String line;
//            while ((line = in.readLine()) != null) {
//                result += "\n" + line;
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
//
//    public static Map<String, Object> getContent(Map<String, Object> resultMap,
//                                                 int groupId) {
//        //Map<String, String> contentMap = (Map<String, String>) resultMap.get("contentMap");
//        Map<String, Integer> countMap = (Map<String, Integer>) resultMap.get("countMap");
//
//        String sendRecvGet = GetPostTest
//                .sendGet("https://cloud.tencent.com/act/campus/group/detail", "group=" + groupId);
//        if (StringUtils.isBlank(sendRecvGet)) {
//            return resultMap;
//        }
//        Document doc = Jsoup.parse(sendRecvGet);
//        if (doc == null) {
//            return resultMap;
//        }
//        Elements elements = doc.getElementsByTag("script");
//        if (elements == null || elements.get(0) == null) {
//            return resultMap;
//        }
//        Element element = elements.get(0);
//        String content = element.toString();
//        if (StringUtils.isBlank(content)) {
//            return resultMap;
//        }
//        content = content.replace("<script>", "")
//                .replace("</script>", "")
//                .replace("window.__INITIAL_STATE__ =", "")
//                .trim();
//
//        JSONObject object = JSONObject.fromObject(content);
//        if (object.getJSONObject("actData") == null) {
//            return resultMap;
//        }
//        JSONObject actData = object.getJSONObject("actData");
//        if (actData == null) {
//            return resultMap;
//        }
//        String creator;
//        try {
//            creator = actData.getString("creator");
//        } catch (JSONException e) {
//            System.out.println(groupId + "不存在，或团长为空");
//            return resultMap;
//        }
//        if (actData.getString("creator") == null || StringUtils.isBlank(creator)) {
//            return resultMap;
//        }
//
//        String users;
//        try {
//            users = actData.getString("users");
//        } catch (JSONException e) {
//            System.out.println(groupId + "不存在，或users为空");
//            return resultMap;
//        }
//        if (actData.getString("users") == null || StringUtils.isNotBlank(users)) {
//            users = users.replace("[", "").
//                    replace("]", "").
//                    replace("\"", "");
//        }
//        //String unPaidUsers = object.getJSONObject("actData").getString("unPaidUsers");
//        int paidUserNum = 0;
//        int teamNumber = 1; //是团长计1
//        if (StringUtils.isNotBlank(users)) {
//            paidUserNum = users.split(",").length;
//            teamNumber = paidUserNum + teamNumber;
//        }
//
//        Integer num = countMap.get("拼团数量为" + teamNumber); //取共有几个这样的组
//        if (num == null) {
//            num = 0;
//        }
//
//        countMap.put("拼团数量为" + teamNumber, ++num);
//
//        //String groupContent ="共计" + teamNumber + "人团; 团长=" + creator + "; 成员=" + users + ";";
//        StringBuilder groupContent = new StringBuilder(64);
//        groupContent.append(groupId).append(",").append(teamNumber).append(",").append(creator);
//        if (StringUtils.isNotBlank(users)) {
//            groupContent.append(",").append(users.replace(",","#"));
//
//        }
//        //contentMap.put(String.valueOf(groupId), groupContent);
//
//        Map<String, Object> map = new HashMap<>();
//        map.put("countMap", countMap);
//
//        GetPostTest.writeFile(groupContent.toString());
//        return map;
//    }
//
//    public static void writeFile(String content) {
//        //FileWriter fw = null;
//        BufferedWriter fw = null;
//        try {
//            //如果文件存在，则追加内容；如果文件不存在，则创建文件
//            File f = new File("D:\\paChong-6.csv");
//            //fw = new FileWriter(f, true);
//            fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f, true), "UTF-8"));
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        PrintWriter pw = new PrintWriter(fw);
//        pw.println(content);
//        pw.flush();
//        try {
//            fw.flush();
//            pw.close();
//            fw.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public static void main(String[] args) throws Exception {
//        Map<String, Object> resultMap = new HashMap<>();
//        Map<String, String> contentMap = new HashMap<>();
//        Map<String, Integer> countMap = new HashMap<>();
//
//        String title = "groupId,团员数量,团长,成员\r\n";
//        //GetPostTest.writeFile(title);
//
//        resultMap.put("contentMap", contentMap);
//        resultMap.put("countMap", countMap);
//
//        for (int groupId = 10010; groupId <= 16854; groupId++) {
//            resultMap = GetPostTest.getContent(resultMap, groupId);
//        }
//
//        /*ExecutorService service = Executors.newFixedThreadPool(3);
//        for (int groupId = 10079; groupId <= 10100; groupId++) {
//            final int index = groupId;
//            Runnable run = new Runnable() {
//                @Override
//                public void run() {
//                    GetPostTest.getContent(resultMap, index);
//                }
//            };
//            service.execute(run);
//        }
//        GetPostTest.writeFile("\r\n");*/
//
//        countMap = (Map<String, Integer>) resultMap.get("countMap");
//        for (Map.Entry<String, Integer> entry : countMap.entrySet()) {
//            String countNumbers = (entry.getKey() + ", 数量有 " + entry.getValue() + " 个团");
//            GetPostTest.writeFile(countNumbers);
//        }
//
//        GetPostTest.writeFile("==================== end =======================");
//        /*contentMap = (Map<String, String>) resultMap.get("contentMap");
//        for (Map.Entry<String, String> entry : contentMap.entrySet()) {
//            //System.out.println("groupId = " + entry.getKey() + ", 内容 = " + entry.getValue());
//            GetPostTest.writeFile("groupId = " + entry.getKey() + ", 内容 = " + entry.getValue()+"\r\n");
//        }*/
//
//    }
//}