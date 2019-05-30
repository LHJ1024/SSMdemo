package org.ssmdeem.dao;

import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A629;
import org.ssmdeem.entity.A636s;

import java.util.List;

public interface A636sMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A636s record);

    int insertSelective(A636s record);

    A636s selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A636s record);

    int updateByPrimaryKey(A636s record);
    List<A636s>find(A636s a636s);
    List<A636s>findAll();
    int update(A636s a636s);
    void insertInfoBatch(List<A636s> a435_1);
}