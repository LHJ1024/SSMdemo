package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class A629 {
    private Integer id;

    private String placename;

    private String cityVillage;

    private String internetbundle;

    private String userType;

    private String numberType;

    private Integer accessNumber;

    private Integer usernumber;

    private Integer znumber;

    private String calltime;

    private String fee;

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    private String tablename;
    private Integer serialNumber;
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

    public Integer getAccessNumber() {
        return accessNumber;
    }

    public void setAccessNumber(Integer accessNumber) {
        this.accessNumber = accessNumber;
    }

    public Integer getUsernumber() {
        return usernumber;
    }

    public void setUsernumber(Integer usernumber) {
        this.usernumber = usernumber;
    }

    public Integer getZnumber() {
        return znumber;
    }

    public void setZnumber(Integer znumber) {
        this.znumber = znumber;
    }

    public String getCalltime() {
        return calltime;
    }

    public void setCalltime(String calltime) {
        this.calltime = calltime == null ? null : calltime.trim();
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee == null ? null : fee.trim();
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