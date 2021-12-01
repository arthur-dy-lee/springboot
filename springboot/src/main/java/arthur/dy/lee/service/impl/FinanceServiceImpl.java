package arthur.dy.lee.service.impl;

import arthur.dy.lee.dao.FinanceMapper;
import arthur.dy.lee.datasource.config2.DataSourceContext;
import arthur.dy.lee.model.Finance;
import arthur.dy.lee.model.FinanceExample;
import arthur.dy.lee.service.DatabaseSourceService;
import arthur.dy.lee.service.FinanceService;
import com.xxl.job.core.biz.AdminBiz;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/7/9.
 */
@Service
//public class FinanceServiceImpl extends ServiceImpl<FinanceMapper, Finance> implements FinanceService {
public class FinanceServiceImpl implements FinanceService {
    @Autowired
    private FinanceMapper mapper;

    // admin-client
    private static final String addressUrl  = "http://192.168.3.100:8080/xxl-job-admin".concat(AdminBiz.MAPPING);
    private static final String accessToken = null;

    @Override public boolean deleteFinace(String id) {
        return this.mapper.deleteByPrimaryKey(id) > 0 ? true : false;
    }

    @Override public Finance insertOrUpdateFinace(Finance finance) {
        if (finance == null)
            return null;
        if (finance.getId() == null) {
            finance.setId(UUID.randomUUID().toString().replace("-", ""));
            this.mapper.insert(finance);
        } else {
            this.mapper.updateByPrimaryKeySelective(finance);
        }
        return finance;
    }

    @Override public Finance getFinace(String id) {
        return this.mapper.selectByPrimaryKey(id);
    }

    @Autowired private DatabaseSourceService databaseSourceService;

    //    @DataSourceSwitch(DBSourceEnum.TEST1)
    @Override public List<Finance> listFinace(String dataSource, String consumerproject, String consumer)
            throws Exception {
        if (!DataSourceContext.containsDataSource(dataSource)) {
            databaseSourceService.addDataSource(dataSource);
        }
        DataSourceContext.setRouterKey(dataSource);

        FinanceExample example = new FinanceExample();
        FinanceExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerprojectLike("%" + consumerproject + "%");
        }
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerLike("%" + consumer + "%");
        }
        List<Finance> list = this.mapper.selectByExample(example);
        DataSourceContext.clearRouterKey();
        return list;

    }

    //    @DataSourceSwitch(DBSourceEnum.TEST2)
    @Override public List<Finance> listFinace2(String dataSource, String consumerproject, String consumer)
            throws Exception {
        if (!DataSourceContext.containsDataSource(dataSource)) {
            databaseSourceService.addDataSource(dataSource);
        }
        DataSourceContext.setRouterKey(dataSource);

        FinanceExample example = new FinanceExample();
        FinanceExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerprojectLike("%" + consumerproject + "%");
        }
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerLike("%" + consumer + "%");
        }

        //this.synTask("financeHandler", "aa");
        return this.mapper.selectByExample(example);
    }

    //    @DataSourceSwitch(DBSourceEnum.TEST3)
    @Override public List<Finance> listFinace3(String dataSource, String consumerproject, String consumer)
            throws Exception {
        DataSourceContext.setRouterKey(dataSource);
        FinanceExample example = new FinanceExample();
        FinanceExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerprojectLike("%" + consumerproject + "%");
        }
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerLike("%" + consumer + "%");
        }

        //this.synTask("financeHandler", "aa");
        return this.mapper.selectByExample(example);
    }

    //    @DataSourceSwitch(DBSourceEnum.TEST4)
    @Override public List<Finance> listFinace4(String dataSource, String consumerproject, String consumer)
            throws Exception {
        DataSourceContext.setRouterKey(dataSource);
        FinanceExample example = new FinanceExample();
        FinanceExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerprojectLike("%" + consumerproject + "%");
        }
        if (!StringUtils.isEmpty(consumer)) {
            criteria.andConsumerLike("%" + consumer + "%");
        }

        //this.synTask("financeHandler", "aa");
        return this.mapper.selectByExample(example);
    }

}
