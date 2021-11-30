package arthur.dy.lee.datasource.config2;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * DataSource路由类
 * <p>
 * 重写的函数决定了最后选择的DataSource
 *
 * @author Lynch
 */
public class MultiRouteDataSource extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        // 通过绑定线程的数据源上下文实现多数据源的动态切换
        return DataSourceContext.getRouterKey();
    }
}