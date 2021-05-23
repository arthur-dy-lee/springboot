//package arthur.dy.lee.config;
//
//import com.alibaba.fastjson.JSON;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.connection.RedisConnectionFactory;
//import org.springframework.data.redis.core.StringRedisTemplate;
//
///**
// * @author wangyx-l
// * @date 2019/7/10
// */
//@Configuration
//public class RedisConfig {
//
//    @Autowired
//    private RedisProperties redisProperties;
//
//    @Bean
//    public StringRedisTemplate stringRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
//        String redisConfig = JSON.toJSONString(redisProperties);
//        System.out.println("XXXXXXXXXXXXXX redis config: " + redisConfig);
//        StringRedisTemplate stringRedisTemplate = new StringRedisTemplate();
//        stringRedisTemplate.setConnectionFactory(redisConnectionFactory);
//        return stringRedisTemplate;
//    }
//}
