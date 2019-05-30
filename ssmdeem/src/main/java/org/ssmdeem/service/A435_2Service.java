package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.A435_2;

import java.io.IOException;

public interface A435_2Service {
    int insert(A435_2 record);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
