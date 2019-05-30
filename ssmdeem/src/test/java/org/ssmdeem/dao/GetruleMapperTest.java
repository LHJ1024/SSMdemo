package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.Getrule;

import static org.junit.Assert.*;

public class GetruleMapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private  GetruleMapper getruleMapper;
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        getruleMapper = applicationContext.getBean(GetruleMapper.class);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void insert() {
        Getrule getrule=new Getrule();
        getrule.setTablen("111");
        getruleMapper.insertSelective(getrule);
    }


}