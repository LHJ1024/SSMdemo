package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A625;

import java.io.IOException;
import java.util.List;

public interface A625Service {
    int insert(A625 record);
    List<A625> findAll();
    int update(A625 a625);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
