package org.ssmdeem.dao;

import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A627;
import org.ssmdeem.entity.A629;

import java.util.List;

public interface A629Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A629 record);

    int insertSelective(A629 record);

    A629 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A629 record);

    int updateByPrimaryKey(A629 record);
    List<A629>find(A629 a629);
    List<A629>findAll();
    int update(A629 a629);
    void insertInfoBatch(List<A629> a435_1);
}