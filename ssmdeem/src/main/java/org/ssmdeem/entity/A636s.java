package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class A636s {
    private Integer id;

    private String placename;

    private String userType;

    private String numberType;

    private String cityVillage;

    private String internetbundle;

    private String sfee;

    private Integer serialNumber;
    private  String tablename;

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlacename() {
        return placename;
    }

    public void setPlacename(String placename) {
        this.placename = placename == null ? null : placename.trim();
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    public String getNumberType() {
        return numberType;
    }

    public void setNumberType(String numberType) {
        this.numberType = numberType == null ? null : numberType.trim();
    }

    public String getCityVillage() {
        return cityVillage;
    }

    public void setCityVillage(String cityVillage) {
        this.cityVillage = cityVillage == null ? null : cityVillage.trim();
    }

    public String getInternetbundle() {
        return internetbundle;
    }

    public void setInternetbundle(String internetbundle) {
        this.internetbundle = internetbundle == null ? null : internetbundle.trim();
    }

    public String getSfee() {
        return sfee;
    }

    public void setSfee(String sfee) {
        this.sfee = sfee == null ? null : sfee.trim();
    }

    public Integer getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(Integer serialNumber) {
        this.serialNumber = serialNumber;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}