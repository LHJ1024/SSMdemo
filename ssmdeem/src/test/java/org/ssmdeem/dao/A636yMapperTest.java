package org.ssmdeem.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.ssmdeem.entity.A636y;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit Spring配置文件的位置
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class A636yMapperTest {
@Autowired
private A636yMapper a636yMapper;
    @Test
    public void insertInfoBatch() {
        A636y a636y=new A636y();
        a636y.setPlacename("11");
        List<A636y>list=new ArrayList<A636y>();
        list.add(a636y);
        a636yMapper.insertInfoBatch(list);

    }
}