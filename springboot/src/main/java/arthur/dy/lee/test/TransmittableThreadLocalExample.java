package arthur.dy.lee.test;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.ttl.TransmittableThreadLocal;
import com.alibaba.ttl.TtlRunnable;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TransmittableThreadLocalExample {
    // 使用 TransmittableThreadLocal 替代标准的 ThreadLocal
    private static final ThreadLocal<String> CONTEXT = new TransmittableThreadLocal<>();

    public static void main(String[] args) {
        // 创建一个线程池
        ExecutorService executorService = Executors.newFixedThreadPool(2);

        // 设置线程局部变量
        CONTEXT.set("主线程的数据");

        // 提交第一个任务
        executorService.submit(TtlRunnable.get(() -> {
            System.out.println("任务1：" + CONTEXT.get());
        }));

        // 改变线程局部变量的值
        CONTEXT.set("主线程的数据 - 修改后");

        // 提交第二个任务
        executorService.submit(TtlRunnable.get(() -> {
            System.out.println("任务2：" + CONTEXT.get());
        }));

        // 关闭线程池
        executorService.shutdown();

        Object o = (Object) null;
        System.out.println("Final value of a: " + o);
        System.out.println(JSONObject.toJSONString(o));
    }
}
