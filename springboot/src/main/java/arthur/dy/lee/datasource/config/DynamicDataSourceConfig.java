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
                dataSourceTest2(), dataSourceTest3(), dataSourceTest4(), dataSourceTest5(), dataSourceTest6(),
                dataSourceTest7(), dataSourceTest8(), dataSourceTest9(), dataSourceTest10(), dataSourceTest11(),
                dataSourceTest12(), dataSourceTest13(), dataSourceTest14(), dataSourceTest15(), dataSourceTest16(),
                dataSourceTest17(), dataSourceTest18(), dataSourceTest19(), dataSourceTest20(), dataSourceTest21(),
                dataSourceTest22(), dataSourceTest23(), dataSourceTest24(), dataSourceTest25(), dataSourceTest26(),
                dataSourceTest27(), dataSourceTest28(), dataSourceTest29(), dataSourceTest30(), dataSourceTest31(),
                dataSourceTest32(), dataSourceTest33(), dataSourceTest34(), dataSourceTest35(), dataSourceTest36(),
                dataSourceTest37(), dataSourceTest38(), dataSourceTest39(), dataSourceTest40(), dataSourceTest41(),
                dataSourceTest42(), dataSourceTest43(), dataSourceTest44(), dataSourceTest45(),
                dataSourceTest46(), dataSourceTest47(), dataSourceTest48(), dataSourceTest49(),
                dataSourceTest50(), dataSourceTest51(), dataSourceTest52(), dataSourceTest53(),
                dataSourceTest54(), dataSourceTest55(), dataSourceTest56(), dataSourceTest57(),
                dataSourceTest58(), dataSourceTest59(), dataSourceTest60(), dataSourceTest61(),
                dataSourceTest62(), dataSourceTest63(), dataSourceTest64(), dataSourceTest65(),
                dataSourceTest66(), dataSourceTest67(), dataSourceTest68(), dataSourceTest69(),
                dataSourceTest70(), dataSourceTest71(), dataSourceTest72(), dataSourceTest73(),
                dataSourceTest74(), dataSourceTest75(), dataSourceTest76(), dataSourceTest77(),
                dataSourceTest78(), dataSourceTest79(), dataSourceTest80(), dataSourceTest81(),
                dataSourceTest82(), dataSourceTest83(), dataSourceTest84(), dataSourceTest85(),
                dataSourceTest86(), dataSourceTest87(), dataSourceTest88(), dataSourceTest89(),
                dataSourceTest90(), dataSourceTest91(), dataSourceTest92(), dataSourceTest93(),
                dataSourceTest94(), dataSourceTest95(), dataSourceTest96(), dataSourceTest97(),
                dataSourceTest98(), dataSourceTest99(), dataSourceTest100()));

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
                                        DataSource dataSourceTest3, DataSource dataSourceTest4,
                                        DataSource dataSourceTest5, DataSource dataSourceTest6,
                                        DataSource dataSourceTest8, DataSource dataSourceTest7,
                                        DataSource dataSourceTest10, DataSource dataSourceTest9,
                                        DataSource dataSourceTest11, DataSource dataSourceTest12,
                                        DataSource dataSourceTest13, DataSource dataSourceTest14,
                                        DataSource dataSourceTest15, DataSource dataSourceTest16,
                                        DataSource dataSourceTest17, DataSource dataSourceTest18,
                                        DataSource dataSourceTest19, DataSource dataSourceTest20,
                                        DataSource dataSourceTest21, DataSource dataSourceTest22,
                                        DataSource dataSourceTest23, DataSource dataSourceTest24,
                                        DataSource dataSourceTest25, DataSource dataSourceTest26,
                                        DataSource dataSourceTest27, DataSource dataSourceTest28,
                                        DataSource dataSourceTest29, DataSource dataSourceTest30,
                                        DataSource dataSourceTest31, DataSource dataSourceTest32,
                                        DataSource dataSourceTest33, DataSource dataSourceTest34,
                                        DataSource dataSourceTest35, DataSource dataSourceTest36,
                                        DataSource dataSourceTest37, DataSource dataSourceTest38,
                                        DataSource dataSourceTest39, DataSource dataSourceTest40,
                                        DataSource dataSourceTest41, DataSource dataSourceTest42,
                                        DataSource dataSourceTest43, DataSource dataSourceTest44,
                                        DataSource dataSourceTest45, DataSource dataSourceTest46,
                                        DataSource dataSourceTest47, DataSource dataSourceTest48,
                                        DataSource dataSourceTest49, DataSource dataSourceTest50,
                                        DataSource dataSourceTest51, DataSource dataSourceTest52,
                                        DataSource dataSourceTest53, DataSource dataSourceTest54,
                                        DataSource dataSourceTest55, DataSource dataSourceTest56,
                                        DataSource dataSourceTest57, DataSource dataSourceTest58,
                                        DataSource dataSourceTest59, DataSource dataSourceTest60,
                                        DataSource dataSourceTest61, DataSource dataSourceTest62,
                                        DataSource dataSourceTest63, DataSource dataSourceTest64,
                                        DataSource dataSourceTest65, DataSource dataSourceTest66,
                                        DataSource dataSourceTest67, DataSource dataSourceTest68,
                                        DataSource dataSourceTest69, DataSource dataSourceTest70,
                                        DataSource dataSourceTest71, DataSource dataSourceTest72,
                                        DataSource dataSourceTest73, DataSource dataSourceTest74,
                                        DataSource dataSourceTest75, DataSource dataSourceTest76,
                                        DataSource dataSourceTest77, DataSource dataSourceTest78,
                                        DataSource dataSourceTest79, DataSource dataSourceTest80,
                                        DataSource dataSourceTest81, DataSource dataSourceTest82,
                                        DataSource dataSourceTest83, DataSource dataSourceTest84,
                                        DataSource dataSourceTest85, DataSource dataSourceTest86,
                                        DataSource dataSourceTest87, DataSource dataSourceTest88,
                                        DataSource dataSourceTest89, DataSource dataSourceTest90,
                                        DataSource dataSourceTest91, DataSource dataSourceTest92,
                                        DataSource dataSourceTest93, DataSource dataSourceTest94,
                                        DataSource dataSourceTest95, DataSource dataSourceTest96,
                                        DataSource dataSourceTest97, DataSource dataSourceTest98,
                                        DataSource dataSourceTest99, DataSource dataSourceTest100
    ) {

        Map<Object, Object> targetDataSources = new HashMap<>();
        targetDataSources.put(DBSourceEnum.TEST1.getValue(), dataSourceTest1);
        targetDataSources.put(DBSourceEnum.TEST2.getValue(), dataSourceTest2);
        targetDataSources.put(DBSourceEnum.TEST3.getValue(), dataSourceTest3);
        targetDataSources.put(DBSourceEnum.TEST4.getValue(), dataSourceTest4);
        targetDataSources.put(DBSourceEnum.TEST5.getValue(), dataSourceTest5);
        targetDataSources.put(DBSourceEnum.TEST6.getValue(), dataSourceTest6);
        targetDataSources.put(DBSourceEnum.TEST7.getValue(), dataSourceTest7);
        targetDataSources.put(DBSourceEnum.TEST8.getValue(), dataSourceTest8);
        targetDataSources.put(DBSourceEnum.TEST9.getValue(), dataSourceTest9);
        targetDataSources.put(DBSourceEnum.TEST10.getValue(), dataSourceTest10);
        targetDataSources.put(DBSourceEnum.TEST11.getValue(), dataSourceTest11);
        targetDataSources.put(DBSourceEnum.TEST12.getValue(), dataSourceTest12);
        targetDataSources.put(DBSourceEnum.TEST13.getValue(), dataSourceTest13);
        targetDataSources.put(DBSourceEnum.TEST14.getValue(), dataSourceTest14);
        targetDataSources.put(DBSourceEnum.TEST15.getValue(), dataSourceTest15);
        targetDataSources.put(DBSourceEnum.TEST16.getValue(), dataSourceTest16);
        targetDataSources.put(DBSourceEnum.TEST17.getValue(), dataSourceTest17);
        targetDataSources.put(DBSourceEnum.TEST18.getValue(), dataSourceTest18);
        targetDataSources.put(DBSourceEnum.TEST19.getValue(), dataSourceTest19);
        targetDataSources.put(DBSourceEnum.TEST20.getValue(), dataSourceTest20);
        targetDataSources.put(DBSourceEnum.TEST21.getValue(), dataSourceTest21);
        targetDataSources.put(DBSourceEnum.TEST22.getValue(), dataSourceTest22);
        targetDataSources.put(DBSourceEnum.TEST23.getValue(), dataSourceTest23);
        targetDataSources.put(DBSourceEnum.TEST24.getValue(), dataSourceTest24);
        targetDataSources.put(DBSourceEnum.TEST25.getValue(), dataSourceTest25);
        targetDataSources.put(DBSourceEnum.TEST26.getValue(), dataSourceTest26);
        targetDataSources.put(DBSourceEnum.TEST27.getValue(), dataSourceTest27);
        targetDataSources.put(DBSourceEnum.TEST28.getValue(), dataSourceTest28);
        targetDataSources.put(DBSourceEnum.TEST29.getValue(), dataSourceTest29);
        targetDataSources.put(DBSourceEnum.TEST30.getValue(), dataSourceTest30);
        targetDataSources.put(DBSourceEnum.TEST31.getValue(), dataSourceTest31);
        targetDataSources.put(DBSourceEnum.TEST32.getValue(), dataSourceTest32);
        targetDataSources.put(DBSourceEnum.TEST33.getValue(), dataSourceTest33);
        targetDataSources.put(DBSourceEnum.TEST34.getValue(), dataSourceTest34);
        targetDataSources.put(DBSourceEnum.TEST35.getValue(), dataSourceTest35);
        targetDataSources.put(DBSourceEnum.TEST36.getValue(), dataSourceTest36);
        targetDataSources.put(DBSourceEnum.TEST37.getValue(), dataSourceTest37);
        targetDataSources.put(DBSourceEnum.TEST38.getValue(), dataSourceTest38);
        targetDataSources.put(DBSourceEnum.TEST39.getValue(), dataSourceTest39);
        targetDataSources.put(DBSourceEnum.TEST40.getValue(), dataSourceTest40);
        targetDataSources.put(DBSourceEnum.TEST41.getValue(), dataSourceTest41);
        targetDataSources.put(DBSourceEnum.TEST42.getValue(), dataSourceTest42);
        targetDataSources.put(DBSourceEnum.TEST43.getValue(), dataSourceTest43);
        targetDataSources.put(DBSourceEnum.TEST44.getValue(), dataSourceTest44);
        targetDataSources.put(DBSourceEnum.TEST45.getValue(), dataSourceTest45);
        targetDataSources.put(DBSourceEnum.TEST46.getValue(), dataSourceTest46);
        targetDataSources.put(DBSourceEnum.TEST47.getValue(), dataSourceTest47);
        targetDataSources.put(DBSourceEnum.TEST48.getValue(), dataSourceTest48);
        targetDataSources.put(DBSourceEnum.TEST49.getValue(), dataSourceTest49);
        targetDataSources.put(DBSourceEnum.TEST50.getValue(), dataSourceTest50);
        targetDataSources.put(DBSourceEnum.TEST51.getValue(), dataSourceTest51);
        targetDataSources.put(DBSourceEnum.TEST52.getValue(), dataSourceTest52);
        targetDataSources.put(DBSourceEnum.TEST53.getValue(), dataSourceTest53);
        targetDataSources.put(DBSourceEnum.TEST54.getValue(), dataSourceTest54);
        targetDataSources.put(DBSourceEnum.TEST55.getValue(), dataSourceTest55);
        targetDataSources.put(DBSourceEnum.TEST56.getValue(), dataSourceTest56);
        targetDataSources.put(DBSourceEnum.TEST57.getValue(), dataSourceTest57);
        targetDataSources.put(DBSourceEnum.TEST58.getValue(), dataSourceTest58);
        targetDataSources.put(DBSourceEnum.TEST59.getValue(), dataSourceTest59);
        targetDataSources.put(DBSourceEnum.TEST60.getValue(), dataSourceTest60);
        targetDataSources.put(DBSourceEnum.TEST61.getValue(), dataSourceTest61);
        targetDataSources.put(DBSourceEnum.TEST62.getValue(), dataSourceTest62);
        targetDataSources.put(DBSourceEnum.TEST63.getValue(), dataSourceTest63);
        targetDataSources.put(DBSourceEnum.TEST64.getValue(), dataSourceTest64);
        targetDataSources.put(DBSourceEnum.TEST65.getValue(), dataSourceTest65);
        targetDataSources.put(DBSourceEnum.TEST66.getValue(), dataSourceTest66);
        targetDataSources.put(DBSourceEnum.TEST67.getValue(), dataSourceTest67);
        targetDataSources.put(DBSourceEnum.TEST68.getValue(), dataSourceTest68);
        targetDataSources.put(DBSourceEnum.TEST69.getValue(), dataSourceTest69);
        targetDataSources.put(DBSourceEnum.TEST70.getValue(), dataSourceTest70);
        targetDataSources.put(DBSourceEnum.TEST71.getValue(), dataSourceTest71);
        targetDataSources.put(DBSourceEnum.TEST72.getValue(), dataSourceTest72);
        targetDataSources.put(DBSourceEnum.TEST73.getValue(), dataSourceTest73);
        targetDataSources.put(DBSourceEnum.TEST74.getValue(), dataSourceTest74);
        targetDataSources.put(DBSourceEnum.TEST75.getValue(), dataSourceTest75);
        targetDataSources.put(DBSourceEnum.TEST76.getValue(), dataSourceTest76);
        targetDataSources.put(DBSourceEnum.TEST77.getValue(), dataSourceTest77);
        targetDataSources.put(DBSourceEnum.TEST78.getValue(), dataSourceTest78);
        targetDataSources.put(DBSourceEnum.TEST79.getValue(), dataSourceTest79);
        targetDataSources.put(DBSourceEnum.TEST80.getValue(), dataSourceTest80);
        targetDataSources.put(DBSourceEnum.TEST81.getValue(), dataSourceTest81);
        targetDataSources.put(DBSourceEnum.TEST82.getValue(), dataSourceTest82);
        targetDataSources.put(DBSourceEnum.TEST83.getValue(), dataSourceTest83);
        targetDataSources.put(DBSourceEnum.TEST84.getValue(), dataSourceTest84);
        targetDataSources.put(DBSourceEnum.TEST85.getValue(), dataSourceTest85);
        targetDataSources.put(DBSourceEnum.TEST86.getValue(), dataSourceTest86);
        targetDataSources.put(DBSourceEnum.TEST87.getValue(), dataSourceTest87);
        targetDataSources.put(DBSourceEnum.TEST88.getValue(), dataSourceTest88);
        targetDataSources.put(DBSourceEnum.TEST89.getValue(), dataSourceTest89);
        targetDataSources.put(DBSourceEnum.TEST90.getValue(), dataSourceTest90);
        targetDataSources.put(DBSourceEnum.TEST91.getValue(), dataSourceTest91);
        targetDataSources.put(DBSourceEnum.TEST92.getValue(), dataSourceTest92);
        targetDataSources.put(DBSourceEnum.TEST93.getValue(), dataSourceTest93);
        targetDataSources.put(DBSourceEnum.TEST94.getValue(), dataSourceTest94);
        targetDataSources.put(DBSourceEnum.TEST95.getValue(), dataSourceTest95);
        targetDataSources.put(DBSourceEnum.TEST96.getValue(), dataSourceTest96);
        targetDataSources.put(DBSourceEnum.TEST97.getValue(), dataSourceTest97);
        targetDataSources.put(DBSourceEnum.TEST98.getValue(), dataSourceTest98);
        targetDataSources.put(DBSourceEnum.TEST99.getValue(), dataSourceTest99);
        targetDataSources.put(DBSourceEnum.TEST100.getValue(), dataSourceTest100);
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

    @Bean
    @ConfigurationProperties("spring.datasource.test5")
    public DataSource dataSourceTest5() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test6")
    public DataSource dataSourceTest6() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test7")
    public DataSource dataSourceTest7() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test8")
    public DataSource dataSourceTest8() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test9")
    public DataSource dataSourceTest9() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test10")
    public DataSource dataSourceTest10() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test11")
    public DataSource dataSourceTest11() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test12")
    public DataSource dataSourceTest12() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test13")
    public DataSource dataSourceTest13() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test14")
    public DataSource dataSourceTest14() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test15")
    public DataSource dataSourceTest15() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test16")
    public DataSource dataSourceTest16() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test17")
    public DataSource dataSourceTest17() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test18")
    public DataSource dataSourceTest18() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test19")
    public DataSource dataSourceTest19() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test20")
    public DataSource dataSourceTest20() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test21")
    public DataSource dataSourceTest21() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test22")
    public DataSource dataSourceTest22() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test23")
    public DataSource dataSourceTest23() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test24")
    public DataSource dataSourceTest24() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test25")
    public DataSource dataSourceTest25() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test26")
    public DataSource dataSourceTest26() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test27")
    public DataSource dataSourceTest27() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test28")
    public DataSource dataSourceTest28() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test29")
    public DataSource dataSourceTest29() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test30")
    public DataSource dataSourceTest30() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test31")
    public DataSource dataSourceTest31() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test32")
    public DataSource dataSourceTest32() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test33")
    public DataSource dataSourceTest33() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test34")
    public DataSource dataSourceTest34() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test35")
    public DataSource dataSourceTest35() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test36")
    public DataSource dataSourceTest36() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test37")
    public DataSource dataSourceTest37() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test38")
    public DataSource dataSourceTest38() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test39")
    public DataSource dataSourceTest39() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test40")
    public DataSource dataSourceTest40() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test41")
    public DataSource dataSourceTest41() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test42")
    public DataSource dataSourceTest42() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test43")
    public DataSource dataSourceTest43() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test44")
    public DataSource dataSourceTest44() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test45")
    public DataSource dataSourceTest45() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test46")
    public DataSource dataSourceTest46() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test47")
    public DataSource dataSourceTest47() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test48")
    public DataSource dataSourceTest48() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test49")
    public DataSource dataSourceTest49() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test50")
    public DataSource dataSourceTest50() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test51")
    public DataSource dataSourceTest51() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test52")
    public DataSource dataSourceTest52() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test53")
    public DataSource dataSourceTest53() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test54")
    public DataSource dataSourceTest54() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test55")
    public DataSource dataSourceTest55() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test56")
    public DataSource dataSourceTest56() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test57")
    public DataSource dataSourceTest57() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test58")
    public DataSource dataSourceTest58() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test59")
    public DataSource dataSourceTest59() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test60")
    public DataSource dataSourceTest60() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test61")
    public DataSource dataSourceTest61() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test62")
    public DataSource dataSourceTest62() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test63")
    public DataSource dataSourceTest63() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test64")
    public DataSource dataSourceTest64() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test65")
    public DataSource dataSourceTest65() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test66")
    public DataSource dataSourceTest66() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test67")
    public DataSource dataSourceTest67() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test68")
    public DataSource dataSourceTest68() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test69")
    public DataSource dataSourceTest69() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test70")
    public DataSource dataSourceTest70() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test71")
    public DataSource dataSourceTest71() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test72")
    public DataSource dataSourceTest72() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test73")
    public DataSource dataSourceTest73() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test74")
    public DataSource dataSourceTest74() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test75")
    public DataSource dataSourceTest75() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test76")
    public DataSource dataSourceTest76() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test77")
    public DataSource dataSourceTest77() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test78")
    public DataSource dataSourceTest78() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test79")
    public DataSource dataSourceTest79() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test80")
    public DataSource dataSourceTest80() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test81")
    public DataSource dataSourceTest81() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test82")
    public DataSource dataSourceTest82() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test83")
    public DataSource dataSourceTest83() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test84")
    public DataSource dataSourceTest84() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test85")
    public DataSource dataSourceTest85() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test86")
    public DataSource dataSourceTest86() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test87")
    public DataSource dataSourceTest87() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test88")
    public DataSource dataSourceTest88() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test89")
    public DataSource dataSourceTest89() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test90")
    public DataSource dataSourceTest90() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test91")
    public DataSource dataSourceTest91() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test92")
    public DataSource dataSourceTest92() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test93")
    public DataSource dataSourceTest93() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test94")
    public DataSource dataSourceTest94() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test95")
    public DataSource dataSourceTest95() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test96")
    public DataSource dataSourceTest96() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test97")
    public DataSource dataSourceTest97() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test98")
    public DataSource dataSourceTest98() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test99")
    public DataSource dataSourceTest99() {
        return DataSourceBuilder.create().build();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.test100")
    public DataSource dataSourceTest100() {
        return DataSourceBuilder.create().build();
    }
}
