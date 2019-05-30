package org.ssmdeem.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.ssmdeem.entity.A435_1;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit Spring配置文件的位置
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class A435_1MapperTest {
    @Autowired
    private A435_1Mapper a435_1Mapper;

    @Test
    public void insertInfoBatch() {
        A435_1 a435_1 = new A435_1();
        a435_1.setPlacename("1234");
        a435_1.setCommodity("11");
        a435_1.setVoicestation("11");
        a435_1.setBeforFee(1.0);
        a435_1.setAfterFee(2.0);
        a435_1.setFee(1.0);
        A435_1 a4351=new A435_1();
        a4351.setPlacename("1234");
        List<A435_1> list=new ArrayList<A435_1>();
        list.add(a435_1);
        list.add(a4351);
        a435_1Mapper.insertInfoBatch(list);
    }
}