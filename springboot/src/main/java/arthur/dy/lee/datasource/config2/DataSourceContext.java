package arthur.dy.lee.datasource.config2;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据源上下文
 * <p>
 * 数据源上下文的作用：用户记录当前线程使用的数据源的key是什么，以及记录所有注册成功的数据源的key的集合。
 *
 * @author Lynch
 */
public class DataSourceContext {
    private static final Logger log = LogManager.getLogger(DataSourceContext.class);

    //线程级别的私有变量
    private static final ThreadLocal<String> contextHolder = new ThreadLocal<String>();

    //存储已经注册的数据源的key
    public static List<String> dataSourceIds = new ArrayList<>();

    public static void setRouterKey(String routerKey) {
        log.debug("切换至{}数据源", routerKey);
        contextHolder.set(routerKey);
    }

    public static String getRouterKey() {
        return contextHolder.get();
    }

    /**
     * 设置数据源之前一定要先移除
     *
     * @author Lynch
     */
    public static void clearRouterKey() {
        contextHolder.remove();
    }

    /**
     * 判断指定DataSrouce当前是否存在
     *
     * @param dataSourceId
     */
    public static boolean containsDataSource(String dataSourceId) {
        return dataSourceIds.contains(dataSourceId);
    }

}