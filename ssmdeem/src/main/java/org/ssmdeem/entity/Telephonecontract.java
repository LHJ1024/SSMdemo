package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Telephonecontract {
    private Integer id;

    private Integer serialNumber;

    private Integer contractNumber;

    private String accessNumber;

    private Integer distributionRatio;

    private String sp;

    private String dateclass;

    private String moneysubject;

    private String collectionType;

    private String dividedInstructions;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(Integer serialNumber) {
        this.serialNumber = serialNumber;
    }

    public Integer getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(Integer contractNumber) {
        this.contractNumber = contractNumber;
    }

    public String getAccessNumber() {
        return accessNumber;
    }

    public void setAccessNumber(String accessNumber) {
        this.accessNumber = accessNumber == null ? null : accessNumber.trim();
    }

    public Integer getDistributionRatio() {
        return distributionRatio;
    }

    public void setDistributionRatio(Integer distributionRatio) {
        this.distributionRatio = distributionRatio;
    }

    public String getSp() {
        return sp;
    }

    public void setSp(String sp) {
        this.sp = sp == null ? null : sp.trim();
    }

    public String getDateclass() {
        return dateclass;
    }

    public void setDateclass(String dateclass) {
        this.dateclass = dateclass == null ? null : dateclass.trim();
    }

    public String getMoneysubject() {
        return moneysubject;
    }

    public void setMoneysubject(String moneysubject) {
        this.moneysubject = moneysubject == null ? null : moneysubject.trim();
    }

    public String getCollectionType() {
        return collectionType;
    }

    public void setCollectionType(String collectionType) {
        this.collectionType = collectionType == null ? null : collectionType.trim();
    }

    public String getDividedInstructions() {
        return dividedInstructions;
    }

    public void setDividedInstructions(String dividedInstructions) {
        this.dividedInstructions = dividedInstructions == null ? null : dividedInstructions.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}