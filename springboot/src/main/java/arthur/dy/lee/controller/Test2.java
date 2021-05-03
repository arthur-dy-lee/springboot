package arthur.dy.lee.controller;

import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Test2 {

    public static void main(String[] args) {
        System.out.println("---");

//        String s = "-2";
//        char firstChar = s.charAt(0);
//        s = "3";
//        char firstChar2 = s.charAt(0);
//        s = "0";
//        char firstChar3 = s.charAt(0);
//        System.out.println(firstChar + ", " + firstChar2 + ", " + firstChar3);
//        int a = Integer.parseInt("214748364");

//        long b = Long.parseLong("0x80000000", 16);
//        int b = Integer.parseInt("11", 2);
//        System.out.println("---" + b);

//        Integer c = Integer.valueOf("1");
//
//        LinkedList linkedList = new LinkedList<>();
//        linkedList.add(1);
//        linkedList.get(0);
//        ConcurrentLinkedDeque deque;
//        ConcurrentLinkedQueue queue;
//
//        String d = new String("b");
//        StringBuilder sb = new StringBuilder();
//        sb.append("aa");
//
        List<String> list = new ArrayList<>();
        list.add("1");
        list.add("2");
        Collections.reverse(list);

        String tmp2 = list.set(0, "3");
        int i = 0;
        int j = 1;
        // instead of using a raw type here, it's possible to capture
        // the wildcard but it will require a call to a supplementary
        // private method
        final List<String> l = list;
        String tmp = l.set(j, l.get(i));
        l.set(i, tmp);
        System.out.println(JSONObject.toJSONString(list));

        CopyOnWriteArrayList copyOnWriteArrayList;

        ConcurrentLinkedQueue concurrentLinkedQueue;

        Lock lock = new ReentrantLock();

    }


}
