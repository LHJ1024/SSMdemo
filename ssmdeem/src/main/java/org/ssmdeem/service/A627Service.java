package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A627;

import java.io.IOException;
import java.util.List;

public interface A627Service {
    int insert(A627 record);
    List<A627>findAll();
    int update(A627 a435_1);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}

