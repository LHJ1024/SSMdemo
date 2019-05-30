package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.apache.ibatis.annotations.Param;
import org.ssmdeem.entity.A602;

import java.io.IOException;
import java.util.List;

public interface A602Service {
    int insert(A602 record);
    List<A602>find(A602 a602);
    List<A602>findAll();
    int updateByPrimaryKeySelective(A602 record);
//    List<A602> find(@Param("cityVillage")String cityVillage, @Param("internetbundle")String internetbundle, @Param("userType")String userType);
void importExcelInfo(String filePath) throws IOException, BiffException;
}
