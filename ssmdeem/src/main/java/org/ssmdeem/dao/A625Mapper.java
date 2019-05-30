package org.ssmdeem.dao;

import org.ssmdeem.entity.A625;
import org.ssmdeem.entity.PageInfo;

import java.util.List;

public interface A625Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A625 record);

    int insertSelective(A625 record);

    List<A625>selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A625 record);

    int updateByPrimaryKey(A625 record);
    List<A625>findAll();
    int update(A625 a625);
    List<A625>find1(PageInfo pageInfo);
    int count2();
    List<A625>find2(A625 a625);
    void insertInfoBatch(List<A625> a435_1);
}