package arthur.dy.lee.dao;

import arthur.dy.lee.model.BigObject;
import arthur.dy.lee.model.BigObjectExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BigObjectMapper {
    long countByExample(BigObjectExample example);

    int deleteByExample(BigObjectExample example);

    int deleteByPrimaryKey(Long id);

    int insert(BigObject record);

    int insertSelective(BigObject record);

    List<BigObject> selectByExampleWithBLOBs(BigObjectExample example);

    List<BigObject> selectByExample(BigObjectExample example);

    BigObject selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") BigObject record, @Param("example") BigObjectExample example);

    int updateByExampleWithBLOBs(@Param("record") BigObject record, @Param("example") BigObjectExample example);

    int updateByExample(@Param("record") BigObject record, @Param("example") BigObjectExample example);

    int updateByPrimaryKeySelective(BigObject record);

    int updateByPrimaryKeyWithBLOBs(BigObject record);

    int updateByPrimaryKey(BigObject record);
}