package arthur.dy.lee.datasource.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * 配置多数据源
 */
@Configuration
public class DynamicDataSourceConfig {

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
                                        DataSource dataSourceTest59
    ) {

        Map<Object, Object> targetDataSources = new HashMap<>();
        targetDataSources.put(DataSourceNames.TEST1, dataSourceTest1);
        targetDataSources.put(DataSourceNames.TEST2, dataSourceTest2);
        targetDataSources.put(DataSourceNames.TEST3, dataSourceTest3);
        targetDataSources.put(DataSourceNames.TEST4, dataSourceTest4);
        targetDataSources.put(DataSourceNames.TEST5, dataSourceTest5);
        targetDataSources.put(DataSourceNames.TEST6, dataSourceTest6);
        targetDataSources.put(DataSourceNames.TEST7, dataSourceTest7);
        targetDataSources.put(DataSourceNames.TEST8, dataSourceTest8);
        targetDataSources.put(DataSourceNames.TEST9, dataSourceTest9);
        targetDataSources.put(DataSourceNames.TEST10, dataSourceTest10);
        targetDataSources.put(DataSourceNames.TEST11, dataSourceTest11);
        targetDataSources.put(DataSourceNames.TEST12, dataSourceTest12);
        targetDataSources.put(DataSourceNames.TEST13, dataSourceTest13);
        targetDataSources.put(DataSourceNames.TEST14, dataSourceTest14);
        targetDataSources.put(DataSourceNames.TEST15, dataSourceTest15);
        targetDataSources.put(DataSourceNames.TEST16, dataSourceTest16);
        targetDataSources.put(DataSourceNames.TEST17, dataSourceTest17);
        targetDataSources.put(DataSourceNames.TEST18, dataSourceTest18);
        targetDataSources.put(DataSourceNames.TEST19, dataSourceTest19);
        targetDataSources.put(DataSourceNames.TEST20, dataSourceTest20);

        targetDataSources.put(DataSourceNames.TEST21, dataSourceTest21);
        targetDataSources.put(DataSourceNames.TEST22, dataSourceTest22);
        targetDataSources.put(DataSourceNames.TEST23, dataSourceTest23);
        targetDataSources.put(DataSourceNames.TEST24, dataSourceTest24);
        targetDataSources.put(DataSourceNames.TEST25, dataSourceTest25);
        targetDataSources.put(DataSourceNames.TEST26, dataSourceTest26);
        targetDataSources.put(DataSourceNames.TEST27, dataSourceTest27);
        targetDataSources.put(DataSourceNames.TEST28, dataSourceTest28);
        targetDataSources.put(DataSourceNames.TEST29, dataSourceTest29);
        targetDataSources.put(DataSourceNames.TEST30, dataSourceTest30);

        targetDataSources.put(DataSourceNames.TEST31, dataSourceTest31);
        targetDataSources.put(DataSourceNames.TEST32, dataSourceTest32);
        targetDataSources.put(DataSourceNames.TEST33, dataSourceTest33);
        targetDataSources.put(DataSourceNames.TEST34, dataSourceTest34);
        targetDataSources.put(DataSourceNames.TEST35, dataSourceTest35);
        targetDataSources.put(DataSourceNames.TEST36, dataSourceTest36);
        targetDataSources.put(DataSourceNames.TEST37, dataSourceTest37);
        targetDataSources.put(DataSourceNames.TEST38, dataSourceTest38);
        targetDataSources.put(DataSourceNames.TEST39, dataSourceTest39);
        targetDataSources.put(DataSourceNames.TEST40, dataSourceTest40);
        targetDataSources.put(DataSourceNames.TEST41, dataSourceTest41);
        targetDataSources.put(DataSourceNames.TEST42, dataSourceTest42);
        targetDataSources.put(DataSourceNames.TEST43, dataSourceTest43);
        targetDataSources.put(DataSourceNames.TEST44, dataSourceTest44);
        targetDataSources.put(DataSourceNames.TEST45, dataSourceTest45);
        targetDataSources.put(DataSourceNames.TEST46, dataSourceTest46);
        targetDataSources.put(DataSourceNames.TEST47, dataSourceTest47);
        targetDataSources.put(DataSourceNames.TEST48, dataSourceTest48);
        targetDataSources.put(DataSourceNames.TEST49, dataSourceTest49);
        targetDataSources.put(DataSourceNames.TEST50, dataSourceTest50);

        targetDataSources.put(DataSourceNames.TEST51, dataSourceTest51);
        targetDataSources.put(DataSourceNames.TEST52, dataSourceTest52);
        targetDataSources.put(DataSourceNames.TEST53, dataSourceTest53);
        targetDataSources.put(DataSourceNames.TEST54, dataSourceTest54);
        targetDataSources.put(DataSourceNames.TEST55, dataSourceTest55);
        targetDataSources.put(DataSourceNames.TEST56, dataSourceTest56);
        targetDataSources.put(DataSourceNames.TEST57, dataSourceTest57);
        targetDataSources.put(DataSourceNames.TEST58, dataSourceTest58);
        targetDataSources.put(DataSourceNames.TEST59, dataSourceTest59);
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

}
