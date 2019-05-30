package org.ssmdeem.service;

import org.ssmdeem.entity.Users;

import java.util.ArrayList;
import java.util.List;

public interface UsersService {

    int insert(Users record);
 List<Users> selectSelective(Users record);
   Users login(Users users);
}
