package arthur.dy.lee.service.impl;

import arthur.dy.lee.dao.DatabaseSourceMapper;
import arthur.dy.lee.datasource.config2.DataSourceContext;
import arthur.dy.lee.datasource.config2.MultiRouteDataSource;
import arthur.dy.lee.model.DatabaseSource;
import arthur.dy.lee.model.DatabaseSourceExample;
import arthur.dy.lee.service.DatabaseSourceService;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

@Service
public class DatabaseSourceServiceImpl implements DatabaseSourceService, BeanFactoryAware {

    private DefaultListableBeanFactory beanFactory;

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = (DefaultListableBeanFactory) beanFactory;
    }

    @Autowired DatabaseSourceMapper mapper;

    @Override public void addDataSource(String datasourceName) throws Exception {
        DatabaseSourceExample example = new DatabaseSourceExample();
        DatabaseSourceExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(datasourceName)) {
            criteria.andNameEqualTo(datasourceName);
        }
        List<DatabaseSource> list = mapper.selectByExample(example);
        if (CollectionUtils.isEmpty(list)) {
            throw new IllegalArgumentException(datasourceName + ", is not exist in database");
        }
        if (list.size() > 1) {
            throw new IllegalArgumentException(datasourceName + ", is duplicate in database");
        }
        DatabaseSource databaseSource = list.get(0);
        String driverClassName = databaseSource.getDriverClassName();

        if (StringUtils.isEmpty(driverClassName)) {
            driverClassName = "com.mysql.jdbc.Driver";
        }
        if (!DataSourceContext.containsDataSource(datasourceName)) {
            HikariDataSource dataSource = new HikariDataSource();
            dataSource.setDriverClassName(driverClassName);
            dataSource.setJdbcUrl(databaseSource.getUrl());
            dataSource.setUsername(databaseSource.getUsername());
            dataSource.setPassword(databaseSource.getPassword());
            dataSource.getConnection();
            MultiRouteDataSource define = (MultiRouteDataSource) beanFactory.getBean("datasource");
            Map<Object, DataSource> resolvedDataSourceMap = define.getResolvedDataSources();

            Map<Object, Object> targetDataSources = CollectionUtils.newHashMap(resolvedDataSourceMap.size() + 1);
            resolvedDataSourceMap.forEach((key, value) -> {
                targetDataSources.put(key, value);
            });
            targetDataSources.put(datasourceName, dataSource);
            define.setTargetDataSources(targetDataSources);
            define.afterPropertiesSet();
            DataSourceContext.dataSourceNameList.add(datasourceName);

        }
    }
}
