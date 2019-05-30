package org.ssmdeem.dao;

import org.apache.poi.ss.formula.functions.T;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A602;

import java.util.List;

public interface A435_1Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A435_1 record);

    int insertSelective(A435_1 record);

    A435_1 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A435_1 record);

    int updateByPrimaryKey(A435_1 record);

    List<A435_1> findAll();

    int update(A435_1 a435_1);

    List<A435_1> find(A435_1 a435_1);

    void insertInfoBatch(List<A435_1> a435_1);
//    void test(List<A435_1> a435_1);
}