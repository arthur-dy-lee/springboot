//package arthur.dy.lee.handler;
//
//import arthur.dy.lee.dao.FinanceMapper;
//import arthur.dy.lee.model.FinanceExample;
//import com.alibaba.fastjson.JSONObject;
//import com.xxl.job.core.biz.model.ReturnT;
//import com.xxl.job.core.handler.IJobHandler;
//import com.xxl.job.core.handler.annotation.JobHandler;
//import com.xxl.job.core.log.XxlJobLogger;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
///**
// * Created by arthur.dy.lee on 2019-08-12.
// */
//
//@JobHandler(value="financeHandler")
//@Component
//public class FinanceHandler extends IJobHandler {
//
//    @Autowired
//    private FinanceMapper mapper;
//
//    @Override
//    public ReturnT<String> execute(String param) throws Exception {
//        XxlJobLogger.log("XXL-JOB, Hello World. financeHandler");
//
//        FinanceExample example = new FinanceExample();
//
//
//        JSONObject.toJSONString("FinanceHandler");
//        JSONObject.toJSONString(mapper.selectByExample(example));
//
//        return SUCCESS;
//    }
//}
