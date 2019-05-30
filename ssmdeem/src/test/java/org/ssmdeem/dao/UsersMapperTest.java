package org.ssmdeem.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssmdeem.entity.Users;

import static org.junit.Assert.*;

public class UsersMapperTest {
private ApplicationContext applicationContext;
@Autowired
private  UsersMapper mapper;
@Before
public  void setUp() throws Exception{
    applicationContext =new ClassPathXmlApplicationContext("classpath:spring/*.xml");
    mapper=applicationContext.getBean(UsersMapper.class);
}
@After
public  void tearDown() throws Exception{}

    @Test
    public void insert() throws Exception {
        Users users=new Users();
        users.setUsername("2");
        users.setName("2");
        users.setPassword("2");
        //users.setSno(2);
        int result =mapper.insert(users);
        System.out.println(result);
        assert (result ==1);
}

    @Test
    public void deleteByPrimaryKey() throws Exception{
    Users users=new Users();
    users.getId();
    int result =mapper.deleteByPrimaryKey(4);
    System.out.println(result);
    assert (result ==1);
    }

    @Test
    public void selectSelective() throws Exception {
    Users u=mapper.selectByPrimaryKey(1);
     mapper.selectSelective(u);
     System.out.println(u);

    }

    @Test
    public void login() throws Exception{
    Users u=mapper.selectByPrimaryKey(3);

    mapper.login(u);
    System.out.println(u);
    }

    @Test
    public void selectByPrimaryKey()throws Exception {
    Users u=mapper.selectByPrimaryKey(3);
    System.out.println(u);
    }
}