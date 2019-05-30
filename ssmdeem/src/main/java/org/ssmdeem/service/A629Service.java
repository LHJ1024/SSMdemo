package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A629;

import java.io.IOException;
import java.util.List;

public interface  A629Service {
    int insert(A629 record);
    List<A629>find(A629 a629);
    List<A629>findAll();
    int update(A629 a629);
    int updateByPrimaryKeySelective(A629 record);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
