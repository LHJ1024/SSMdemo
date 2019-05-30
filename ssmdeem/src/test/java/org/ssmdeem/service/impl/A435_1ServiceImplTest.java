package org.ssmdeem.service.impl;

import jxl.read.biff.BiffException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.ssmdeem.service.A435_1Service;

import java.io.IOException;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit Spring配置文件的位置
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class A435_1ServiceImplTest {
    @Autowired
     private    A435_1Service a435_1Service;

    @Test
    public void importExcelInfo() throws IOException, BiffException {
        String s1="C:\\Users\\JAX\\Desktop\\ssmdeem\\test1.xlsx";
        a435_1Service.importExcelInfo(s1) ;
    }
}