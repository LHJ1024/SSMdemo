package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.A629;
import org.ssmdeem.entity.A636s;

import java.io.IOException;
import java.util.List;

public interface A636sService {
    int insert(A636s record);
    List<A636s>find(A636s a636s);
    List<A636s>findAll();
    int update(A636s a435_1);
    int updateByPrimaryKeySelective(A636s record);
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
