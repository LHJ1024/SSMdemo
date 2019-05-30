package org.ssmdeem.dao;

import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A629;
import org.ssmdeem.entity.A636y;

import java.util.List;

public interface A636yMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A636y record);

    int insertSelective(A636y record);

    A636y selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A636y record);

    int updateByPrimaryKey(A636y record);
    List<A636y>find(A636y a636y);
    List<A636y>findAll();
    int update(A636y a636y);
    void insertInfoBatch(List<A636y> a435_1);
}