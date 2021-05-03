package arthur.dy.lee.service.impl;

import arthur.dy.lee.dao.BigObjectMapper;
import arthur.dy.lee.model.BigObject;
import arthur.dy.lee.model.BigObjectExample;
import arthur.dy.lee.service.BigObjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by arthur.dy.lee on 2018/4/1.
 */
@Service
public class BigObjectServiceImpl implements BigObjectService {
    @Autowired
    private BigObjectMapper mapper;

    @Override public boolean insertBigObject(BigObject bigObject) {

        return mapper.insert(bigObject) > 0 ? true : false;
    }

    @Override public List<BigObject> listBigObject(Integer limit, Integer offset) {
        BigObjectExample example = new BigObjectExample();
        if (limit != null && limit > 0) {
            example.setLimit(limit);
        }
        if (offset != null && offset > 0) {
            example.setOffset(offset);
        }
        return mapper.selectByExampleWithBLOBs(example);
    }

}
