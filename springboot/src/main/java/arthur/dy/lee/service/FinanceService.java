package arthur.dy.lee.service;

import arthur.dy.lee.model.Finance;

import java.util.List;

/**
 * Created by Administrator on 2017/7/9.
 */
public interface FinanceService {

    boolean deleteFinace(String id);

    Finance insertOrUpdateFinace(Finance finance);

    Finance getFinace(String id);

    List<Finance> listFinace(String consumerproject, String consumer) throws Exception;

}
