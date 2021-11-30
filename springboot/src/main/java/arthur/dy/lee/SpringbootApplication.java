package arthur.dy.lee;

import arthur.dy.lee.datasource.config2.DynamicDataSourceRegister;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@EnableRedisHttpSession
@MapperScan(value = { "arthur.dy.lee.dao" })
//注册动态多数据源
@Import(DynamicDataSourceRegister.class)
public class SpringbootApplication {

    public static void main(String[] args) {
        //        SpringApplication.run(SpringbootApplication.class, args);
        SpringApplication springApplication = new SpringApplication(SpringbootApplication.class);
//        springApplication.addListeners(new ApplicationReadyEventListener());
        springApplication.run(args);
    }

//    @Bean
//    public PaginationInterceptor paginationInterceptor() {
//        return new PaginationInterceptor();
//    }

    @Bean
    ConfigureRedisAction configureRedisAction() {
        return ConfigureRedisAction.NO_OP;
    }

    //    @Bean
    //    public JedisConnectionFactory redisConnectionFactory() {
    //        RedisStandaloneConfiguration config = new RedisStandaloneConfiguration("127.0.0.1", 6379);
    //        config.setPassword("123456a?");
    //        return new JedisConnectionFactory(config);
    //    }

}
