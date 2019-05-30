package org.ssmdeem.dao;

import org.springframework.stereotype.Repository;
import org.ssmdeem.entity.Users;

import java.util.ArrayList;
import java.util.List;


@Repository
public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);
    int insertSelective(Users record);
    Users selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Users record);
    int updateByPrimaryKey(Users record);
List<Users> selectSelective(Users record);
    Users login(Users users);
}