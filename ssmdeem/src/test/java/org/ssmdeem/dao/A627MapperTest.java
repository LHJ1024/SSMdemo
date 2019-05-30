package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.A627;

import java.sql.Date;

import static org.junit.Assert.*;

public class A627MapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private  A627Mapper mapper;
    @Before
    public  void setUp() throws Exception{
        applicationContext =new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper=applicationContext.getBean(A627Mapper.class);
    }
    @After
    public  void tearDown() throws Exception{}

    @Test
    public void insert() throws Exception{
        A627 a627=new A627();

        Date date=new Date(1);
        a627.setTime(date);
      //  int result =mapper.insert(a627);
        System.out.println(mapper.findAll());
    }


}