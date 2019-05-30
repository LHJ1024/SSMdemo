package org.ssmdeem.entity;

public class Getrule {
    private Integer id;

    private Integer contractNumber;

    private String moneysubject;

    private String collectionType;

    private String sp;

    private String tablen;

    private String bigclass;

    private String smallclass;

    private String numberType;

    private Integer distributionRatio;

    private Integer spdistributionRatio;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(Integer contractNumber) {
        this.contractNumber = contractNumber;
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

    public String getSp() {
        return sp;
    }

    public void setSp(String sp) {
        this.sp = sp == null ? null : sp.trim();
    }

    public String getTablen() {
        return tablen;
    }

    public void setTablen(String tablen) {
        this.tablen = tablen == null ? null : tablen.trim();
    }

    public String getBigclass() {
        return bigclass;
    }

    public void setBigclass(String bigclass) {
        this.bigclass = bigclass == null ? null : bigclass.trim();
    }

    public String getSmallclass() {
        return smallclass;
    }

    public void setSmallclass(String smallclass) {
        this.smallclass = smallclass == null ? null : smallclass.trim();
    }

    public String getNumberType() {
        return numberType;
    }

    public void setNumberType(String numberType) {
        this.numberType = numberType == null ? null : numberType.trim();
    }

    public Integer getDistributionRatio() {
        return distributionRatio;
    }

    public void setDistributionRatio(Integer distributionRatio) {
        this.distributionRatio = distributionRatio;
    }

    public Integer getSpdistributionRatio() {
        return spdistributionRatio;
    }

    public void setSpdistributionRatio(Integer spdistributionRatio) {
        this.spdistributionRatio = spdistributionRatio;
    }
}