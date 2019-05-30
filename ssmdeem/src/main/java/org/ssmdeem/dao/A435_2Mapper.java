package org.ssmdeem.dao;

import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A435_2;

import java.util.List;

public interface A435_2Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A435_2 record);

    int insertSelective(A435_2 record);

    A435_2 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A435_2 record);

    int updateByPrimaryKey(A435_2 record);
    void insertInfoBatch(List<A435_2> a435_1);
}