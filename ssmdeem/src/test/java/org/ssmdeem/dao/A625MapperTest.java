package org.ssmdeem.dao;

//import com.github.pagehelper.PageHelper;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.A625;
import org.ssmdeem.entity.PageInfo;
//import  org.ssmdeem.entity.p

import java.util.List;

import static org.junit.Assert.*;

public class A625MapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private A625Mapper mapper;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper = applicationContext.getBean(A625Mapper.class);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void insert() {
//
//        PageHelper.startPage(2, 10);
//        List<A625>list=mapper.findAll();
//        for (A625 a625:list){
//            System.out.print(a625.getPlacename());
//        int totalCount = mapper.count2();
//        int page=10;
//        PageInfo<A625>pageInfo=new PageInfo<A625>(page,PageInfo.size,totalCount);
//        List<A625>list =mapper.find1(pageInfo);
//        for(A625 a625:list){
//            System.out.print(a625);
//

//
        A625 a625 = new A625();
//        a625.setPlacename("巴南");
//        a625.setBigclass("sp上行短信业务");
//        a625.setSmallclass("sp短信(电信公司主动营销系统)");
////        a625.setNumberType("10000短信上行费");
//        List<A625> list = mapper.find2(a625);
        a625.setId(1);
        List<A625>list =mapper.selectByPrimaryKey(1);

        for (A625 a11 : list) {
            System.out.print(a11.getPlacename());

        }
//        System.out.print(a11.getPlacename());
    }


}