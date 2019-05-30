package org.ssmdeem.service;

import jxl.read.biff.BiffException;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.entity.A435_1;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public interface A435_1Service {
    int insert(A435_1 record);
    List<A435_1> findAll();
    int update(A435_1 a435_1);

//    void importExcelInfo(InputStream in, MultipartFile file, Integer id)throws Exception;
    void importExcelInfo(String filePath) throws IOException, BiffException;
}
