package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A636s;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class A636sMapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private  A636sMapper mapper;
    @Before
    public  void setUp() throws Exception{
        applicationContext =new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper=applicationContext.getBean(A636sMapper.class);
    }
    @After
    public  void tearDown() throws Exception{}

    @Test
    public void find() {
        A636s a636s=new A636s();
        System.out.print(mapper.selectByPrimaryKey(1).getCityVillage());
    }

    @Test
    public void insertInfoBatch() {
        A636s a435_1 = new A636s();
        a435_1.setPlacename("1234");
        List<A636s> list=new ArrayList<A636s>();
        list.add(a435_1);
        mapper.insertInfoBatch(list);
    }
}