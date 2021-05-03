package arthur.dy.lee.service;

import arthur.dy.lee.model.BigObject;

import java.util.List;

/**
 * Created by arthur.dy.lee on 2018/4/1.
 */
public interface BigObjectService {

    boolean insertBigObject(BigObject bigObject);

    List<BigObject> listBigObject(Integer limit, Integer offset);
}
