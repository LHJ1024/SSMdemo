package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.A629;

import static org.junit.Assert.*;

public class A629MapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private  A629Mapper mapper;
    @Before
    public  void setUp() throws Exception{
        applicationContext =new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper=applicationContext.getBean(A629Mapper.class);
    }
    @After
    public  void tearDown() throws Exception{}
    @Test
    public void insert() {
        A629  a629=new A629();
        a629.setCalltime("100");
        int test=mapper.insert(a629);
        System.out.println(test);
    }

//    @Test
//    public void insert1() {
//    }
}