package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.A602;
import org.ssmdeem.entity.Users;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static org.junit.Assert.*;

public class A602MapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private  A602Mapper mapper;
    @Before
    public  void setUp() throws Exception{
        applicationContext =new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper=applicationContext.getBean(A602Mapper.class);
    }
    @After
    public  void tearDown() throws Exception{}

    @Test
    public void find() {
        A602 a602=new A602();
        a602.setCityVillage("农村");
        a602.setUserType("固话");
        a602.setInternetbundle("1");
        List<A602>list=mapper.find(a602);
        if (list.size()!=0){
            for (int i=0;i<list.size();i++){
                System.out.print(list);
            }
        }
        else {
            System.out.print("没有值");
        }
    }

    @Test
    public void find2131(){
//        List<A602>list =mapper.findAll();
//
//       for (Iterator iterators = list.iterator();iterators.hasNext();){
//                 A602 a602=(A602) iterators.next();
//                 String place=a602.getPlacename();
//                 System.out.print("xx:"+place);
        A602 a602=new A602();
        a602.setId(2);
        a602.setPlacename("万州");
        mapper.update(a602);
       }

    @Test
    public void update123() {
        A602 a602=new A602();
        a602.setId(2);
        a602.setCityVillage("城市");
        a602.setInternetbundle("是");
        a602.setUserType("移动");
        mapper.updateByPrimaryKeySelective(a602);
    }
}

