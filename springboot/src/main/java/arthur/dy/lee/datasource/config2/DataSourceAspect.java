package arthur.dy.lee.datasource.config2;

import arthur.dy.lee.service.DatabaseSourceService;
import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.CodeSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

/**
 * 多数据源，切面处理类
 */
@Aspect
@Component
public class DataSourceAspect implements Ordered {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired private DatabaseSourceService databaseSourceService;

    @Pointcut("@annotation(arthur.dy.lee.datasource.config2.DataSourceSwitch)")
    public void dataSourcePointCut() {

    }

    @Around("dataSourcePointCut()")
    public Object around(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        //        MethodSignature signature = (MethodSignature) proceedingJoinPoint.getSignature();
        //        Method method = signature.getMethod();
        Object result = null;
        try {
                String[] paramNames = ((CodeSignature) proceedingJoinPoint.getSignature()).getParameterNames();
            String dataSource = null;
            if (paramNames.length >= 1 && "dataSourceName".equals(paramNames[0])
                    && proceedingJoinPoint.getArgs() != null && proceedingJoinPoint.getArgs()[0] != null) {
                dataSource = proceedingJoinPoint.getArgs()[0].toString();
                if (StringUtils.isNotBlank(dataSource)) {
                    if (!DataSourceContext.containsDataSource(dataSource)) {
                        databaseSourceService.addDataSource(dataSource);
                    }
                    DataSourceContext.setRouterKey(dataSource);
                }

            }

            result = proceedingJoinPoint.proceed();
            DataSourceContext.clearRouterKey();
        } finally {

            this.logger.debug("clean datasource");
        }
        return result;
    }

    @Override
    public int getOrder() {
        return 1;
    }
}