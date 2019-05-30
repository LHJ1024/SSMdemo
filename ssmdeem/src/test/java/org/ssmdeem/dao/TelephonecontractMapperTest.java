package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.Getrule;
import org.ssmdeem.entity.Telephonecontract;

import java.util.List;

public class TelephonecontractMapperTest {
    private ApplicationContext applicationContext;
    @Autowired
    private TelephonecontractMapper mapper;
    @Autowired
    private  GetruleMapper getruleMapper;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        mapper = applicationContext.getBean(TelephonecontractMapper.class);
    }

    @After
    public void tearDown() throws Exception {
        mapper.insert(new Telephonecontract());
    }

    @Test
    public void repeat11() {
    Telephonecontract telephonecontract=new Telephonecontract();
    telephonecontract.setContractNumber(2);
    List<Telephonecontract>list=mapper.repeat(telephonecontract);
    System.out.print(list.size());
    if (list.size()==0){
        mapper.insertSelective(telephonecontract);
        System.out.print("无重复");
    }
    else{
        System.out.print("11");
    }
    }
}