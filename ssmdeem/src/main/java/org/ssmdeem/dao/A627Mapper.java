package org.ssmdeem.dao;

import org.ssmdeem.entity.A625;
import org.ssmdeem.entity.A627;
import org.ssmdeem.entity.PageInfo;

import java.util.List;

public interface A627Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A627 record);

    int insertSelective(A627 record);

    List<A627> selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A627 record);

    int updateByPrimaryKey(A627 record);

    List<A627> findAll();

    int update(A627 a627);

    List<A627> find1(PageInfo pageInfo);

    int count2();

    List<A627> find2(A627 a627);
    void insertInfoBatch(List<A627> a435_1);
}