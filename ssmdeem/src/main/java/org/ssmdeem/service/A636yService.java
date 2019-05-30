package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.*;

import java.io.IOException;
import java.util.List;

public interface A636yService {
    int insert(A636y record);
    List<A636y>find(A636y a636y);
    List<A636y>findAll();
    int update(A636y a435_1);
    int updateByPrimaryKeySelective(A636y record);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
