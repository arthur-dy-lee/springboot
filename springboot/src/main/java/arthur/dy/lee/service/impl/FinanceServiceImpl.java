package arthur.dy.lee.service.impl;

import arthur.dy.lee.dao.FinanceMapper;
import arthur.dy.lee.datasource.config.DataSource;
import arthur.dy.lee.datasource.config.DataSourceNames;
import arthur.dy.lee.model.Finance;
import arthur.dy.lee.model.FinanceExample;
import arthur.dy.lee.service.FinanceService;
import com.xxl.job.core.biz.AdminBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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

    @DataSource(name = DataSourceNames.TEST1)
    @Override public List<Finance> listFinace(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST2)
    @Override public List<Finance> listFinace2(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST3)
    @Override public List<Finance> listFinace3(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST4)
    @Override public List<Finance> listFinace4(String consumerproject, String consumer) throws Exception {
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



    @DataSource(name = DataSourceNames.TEST5)
    @Override public List<Finance> listFinace5(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST6)
    @Override public List<Finance> listFinace6(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST7)
    @Override public List<Finance> listFinace7(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST8)
    @Override public List<Finance> listFinace8(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST9)
    @Override public List<Finance> listFinace9(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST10)
    @Override public List<Finance> listFinace10(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST12)
    @Override public List<Finance> listFinace12(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST11)
    @Override public List<Finance> listFinace11(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST13)
    @Override public List<Finance> listFinace13(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST14)
    @Override public List<Finance> listFinace14(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST15)
    @Override public List<Finance> listFinace15(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST16)
    @Override public List<Finance> listFinace16(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST17)
    @Override public List<Finance> listFinace17(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST18)
    @Override public List<Finance> listFinace18(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST19)
    @Override public List<Finance> listFinace19(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST20)
    @Override public List<Finance> listFinace20(String consumerproject, String consumer) throws Exception {
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


    @DataSource(name = DataSourceNames.TEST21)
    @Override public List<Finance> listFinace21(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST22)
    @Override public List<Finance> listFinace22(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST23)
    @Override public List<Finance> listFinace23(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST24)
    @Override public List<Finance> listFinace24(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST25)
    @Override public List<Finance> listFinace25(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST26)
    @Override public List<Finance> listFinace26(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST27)
    @Override public List<Finance> listFinace27(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST28)
    @Override public List<Finance> listFinace28(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST29)
    @Override public List<Finance> listFinace29(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST30)
    @Override public List<Finance> listFinace30(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST31)
    @Override public List<Finance> listFinace31(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST32)
    @Override public List<Finance> listFinace32(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST33)
    @Override public List<Finance> listFinace33(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST34)
    @Override public List<Finance> listFinace34(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST35)
    @Override public List<Finance> listFinace35(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST36)
    @Override public List<Finance> listFinace36(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST37)
    @Override public List<Finance> listFinace37(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST38)
    @Override public List<Finance> listFinace38(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST39)
    @Override public List<Finance> listFinace39(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST40)
    @Override public List<Finance> listFinace40(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST41)
    @Override public List<Finance> listFinace41(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST42)
    @Override public List<Finance> listFinace42(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST43)
    @Override public List<Finance> listFinace43(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST44)
    @Override public List<Finance> listFinace44(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST45)
    @Override public List<Finance> listFinace45(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST46)
    @Override public List<Finance> listFinace46(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST47)
    @Override public List<Finance> listFinace47(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST48)
    @Override public List<Finance> listFinace48(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST49)
    @Override public List<Finance> listFinace49(String consumerproject, String consumer) throws Exception {
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

    @DataSource(name = DataSourceNames.TEST50)
    @Override public List<Finance> listFinace50(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST51)
    @Override public List<Finance> listFinace51(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST52)
    @Override public List<Finance> listFinace52(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST53)
    @Override public List<Finance> listFinace53(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST54)
    @Override public List<Finance> listFinace54(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST55)
    @Override public List<Finance> listFinace55(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST56)
    @Override public List<Finance> listFinace56(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST57)
    @Override public List<Finance> listFinace57(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST58)
    @Override public List<Finance> listFinace58(String consumerproject, String consumer) throws Exception {
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
    @DataSource(name = DataSourceNames.TEST59)
    @Override public List<Finance> listFinace59(String consumerproject, String consumer) throws Exception {
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
