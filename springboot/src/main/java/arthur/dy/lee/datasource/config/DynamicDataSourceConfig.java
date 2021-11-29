package arthur.dy.lee.datasource.config;

import com.baomidou.mybatisplus.MybatisConfiguration;
import com.baomidou.mybatisplus.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.spring.MybatisSqlSessionFactoryBean;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.JdbcType;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * 配置多数据源
 */
@Configuration
public class DynamicDataSourceConfig {

    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
        paginationInterceptor.setDialectType("mysql");
        // paginationInterceptor.setLimit(你的最大单页限制数量，默认 500 条，小于 0 如 -1 不受限制);
        //return new PerformanceInterceptor();
        return paginationInterceptor;
    }

    /**
     * 配置mybatis的分页插件pageHelper
     *
     * @return
     */
    @Bean
    public PageHelper pageHelper() {
        PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("offsetAsPageNum", "true");
        properties.setProperty("rowBoundsWithCount", "true");
        properties.setProperty("reasonable", "true");
        properties.setProperty("dialect",
                "mysql");    //配置mysql数据库的方言        pageHelper.setProperties(properties);        return pageHelper;    }}
        return pageHelper;
    }

    @Bean("sqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        // 导入mybatissqlsession配置
        MybatisSqlSessionFactoryBean sessionFactory = new MybatisSqlSessionFactoryBean();
        // 指明数据源
        sessionFactory.setDataSource(dataSource(dataSourceTest1(),
                dataSourceTest2(), dataSourceTest3(), dataSourceTest4()));

        sessionFactory.setMapperLocations(
                new PathMatchingResourcePatternResolver().getResources("classpath*:/mapping/**Mapper.xml"));
        //指明实体扫描(多个package用逗号或者分号分隔)
        sessionFactory.setTypeAliasesPackage("arthur.dy.lee.model");
        // 导入mybatis配置
        MybatisConfiguration configuration = new MybatisConfiguration();
        configuration.setJdbcTypeForNull(JdbcType.NULL);
        configuration.setMapUnderscoreToCamelCase(true);
        configuration.setCacheEnabled(false);
        sessionFactory.setConfiguration(configuration);
        // 添加分页功能
        sessionFactory.setPlugins(new Interceptor[] {
                paginationInterceptor()
        });
        // 导入全局配置
        //sessionFactory.setGlobalConfig(globalConfiguration());
        return sessionFactory.getObject();
    }

    @Bean
    @Primary
    public DynamicDataSource dataSource(DataSource dataSourceTest1, DataSource dataSourceTest2,
                                        DataSource dataSourceTest3, DataSource dataSourceTest4
    ) {

        Map<Object, Object> targetDataSources = new HashMap<>();
        targetDataSources.put(DBSourceEnum.TEST1.getValue(), dataSourceTest1);
        targetDataSources.put(DBSourceEnum.TEST2.getValue(), dataSourceTest2);
        targetDataSources.put(DBSourceEnum.TEST3.getValue(), dataSourceTest3);
        targetDataSources.put(DBSourceEnum.TEST4.getValue(), dataSourceTest4);
        return new DynamicDataSource(dataSourceTest1, targetDataSources);
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test1")
    public DataSource dataSourceTest1() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test2")
    public DataSource dataSourceTest2() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test3")
    public DataSource dataSourceTest3() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test4")
    public DataSource dataSourceTest4() {
        return DataSourceBuilder.create().build();
    }


}
