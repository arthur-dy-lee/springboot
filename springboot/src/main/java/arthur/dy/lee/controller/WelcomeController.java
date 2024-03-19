package arthur.dy.lee.controller;

/**
 * Created by arthur.dy.lee on 2018/1/1.
 */

import arthur.dy.lee.model.BigObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class WelcomeController {

    // inject via application.properties
    @Value("${welcome.message:test}")
    private String message = "Hello World";

    public static ThreadLocal<String> threadLocal = new ThreadLocal<>();

    @RequestMapping("/welcome")
    public String welcome(Map<String, Object> model) {
        threadLocal.set("abc");
        String tmp = threadLocal.get();
        model.put("message", this.message);
        System.out.println("BigObject gced: " + BigObject.getBigObjectFinalizeCount());
        return "welcome";
    }

    @RequestMapping("/welcome2")
    public String welcome2(Map<String, Object> model) {
        threadLocal.set("def");
        String tmp = threadLocal.get();
        model.put("message", this.message);
        System.out.println("BigObject gced: " + BigObject.getBigObjectFinalizeCount());
        return "welcome";
    }
}