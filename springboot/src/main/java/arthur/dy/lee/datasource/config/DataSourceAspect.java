package arthur.dy.lee.datasource.config;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * 多数据源，切面处理类
 */
@Aspect
@Component
public class DataSourceAspect implements Ordered {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    @Pointcut("@annotation(arthur.dy.lee.datasource.config.DataSourceSwitch)")
    public void dataSourcePointCut() {

    }

    @Around("dataSourcePointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();

        DataSourceSwitch ds = method.getAnnotation(DataSourceSwitch.class);
        System.out.println("===============================ds:"+ds.value().toString());
        if (ds == null) {
            DynamicDataSource.setDataSource(DBSourceEnum.TEST1.getValue());
            this.logger.debug("set datasource is " + DBSourceEnum.TEST1.getValue());
        } else {
            DynamicDataSource.setDataSource(ds.value().getValue());
            this.logger.debug("set datasource is " + ds.value().getValue());
        }

        try {
            return point.proceed();
        } finally {
            DynamicDataSource.clearDataSource();
            this.logger.debug("clean datasource");
        }
    }

    @Override
    public int getOrder() {
        return 1;
    }
}