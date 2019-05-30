package org.ssmdeem.dao;


import org.ssmdeem.entity.A435_2;
import org.ssmdeem.entity.A602;

import java.util.List;

public interface A602Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(A602 record);

    int insertSelective(A602 record);

    A602 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(A602 record);
    int updateByPrimaryKey(A602 record);
    List<A602>find(A602 a602);
    List<A602>findAll();
//    int update(A602 a602);
    int update(A602 a602);
//     int update1(A602 a602);

    void insertInfoBatch(List<A602> a435_1);
//     List<A602> find(@Param("cityVillage")String cityVillage,@Param("internetbundle")String internetbundle,@Param("userType")String userType);
}