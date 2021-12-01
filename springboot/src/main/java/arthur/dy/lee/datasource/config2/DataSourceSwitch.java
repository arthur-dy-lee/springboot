package arthur.dy.lee.datasource.config2;


import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 多数据源注解
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataSourceSwitch {
    //DBSourceEnum value() default DBSourceEnum.TEST1; 如果数据源是稳定的，而不是动态可变的，则此处可以定义枚举或string类型字符串，在AOP中就不需要动态查找参数名了
}
