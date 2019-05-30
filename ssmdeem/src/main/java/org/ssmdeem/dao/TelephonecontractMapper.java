package org.ssmdeem.dao;

import org.ssmdeem.entity.A625;
import org.ssmdeem.entity.PageInfo;
import org.ssmdeem.entity.Telephonecontract;

import java.util.List;

public interface TelephonecontractMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Telephonecontract record);

    int insertSelective(Telephonecontract record);

    Telephonecontract selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Telephonecontract record);

    int updateByPrimaryKey(Telephonecontract record);
    List<Telephonecontract> findAll();
    List<Telephonecontract>  repeat(Telephonecontract telephonecontract);
    int count2();
    List<Telephonecontract> find1(PageInfo pageInfo);
}