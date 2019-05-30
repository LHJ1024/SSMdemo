package org.ssmdeem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmdeem.dao.TelephonecontractMapper;
import org.ssmdeem.entity.Telephonecontract;
import org.ssmdeem.service.TelephonecontractService;

@Service
public class TelephonecontractImpl implements TelephonecontractService{
@Autowired
    private TelephonecontractMapper telephonecontractMapper;
public int insert(Telephonecontract record){
    return telephonecontractMapper.insert(record);
}
}
