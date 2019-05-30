package org.ssmdeem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmdeem.dao.UsersMapper;
import org.ssmdeem.entity.Users;
import org.ssmdeem.service.UsersService;

import java.util.ArrayList;
import java.util.List;


@Service
public class UsersServicelmpl implements UsersService{
    @Autowired
    private UsersMapper usersMapper;


public  int insert(Users record){
    return usersMapper.insert(record);
}
    public List<Users> selectSelective(Users record) {
        return usersMapper.selectSelective(record);
    }
public Users login(Users users) {
    return  usersMapper.login(users);
}

}


