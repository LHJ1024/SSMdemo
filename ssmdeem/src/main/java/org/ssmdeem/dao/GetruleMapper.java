package org.ssmdeem.dao;

import org.ssmdeem.entity.Getrule;

public interface GetruleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Getrule record);

    int insertSelective(Getrule record);

    Getrule selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Getrule record);

    int updateByPrimaryKey(Getrule record);
}