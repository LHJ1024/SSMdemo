package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class A602 {
    private Integer id;

    private String placename;

    private String cityVillage;

    private String internetbundle;

    private String qq;

    private String userType;

    private String billNumber;

    private String userNumber;

    private String duration;

    private String times;

    private String callcost;


    private  String tablename;

    private Integer serialNumber;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date time;
    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

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

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    public String getBillNumber() {
        return billNumber;
    }

    public void setBillNumber(String billNumber) {
        this.billNumber = billNumber == null ? null : billNumber.trim();
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber == null ? null : userNumber.trim();
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration == null ? null : duration.trim();
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times == null ? null : times.trim();
    }

    public String getCallcost() {
        return callcost;
    }

    public void setCallcost(String callcost) {
        this.callcost = callcost == null ? null : callcost.trim();
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

    @Override
    public String toString() {
        return "A602{" +
                "id=" + id +
                ", placename='" + placename + '\'' +
                ", cityVillage='" + cityVillage + '\'' +
                ", internetbundle='" + internetbundle + '\'' +
                ", qq='" + qq + '\'' +
                ", userType='" + userType + '\'' +
                ", billNumber='" + billNumber + '\'' +
                ", userNumber='" + userNumber + '\'' +
                ", duration='" + duration + '\'' +
                ", times='" + times + '\'' +
                ", callcost='" + callcost + '\'' +
                ", serialNumber=" + serialNumber +
                ", time=" + time +
                '}';
    }
}