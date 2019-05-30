package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class A625 {
    private Integer id;

    private String placename;

    private String bigclass;

    private String smallclass;

    private String numberType;

    private String product;

    private String cityVillage;

    private String internetbundle;

    private Integer usernumber;

    private Integer znumber;

    private String costtime;

    private Double beforFee;

    private Double afterFee;

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    @Override
    public String toString() {
        return "A625{" +
                "id=" + id +
                ", placename='" + placename + '\'' +
                ", bigclass='" + bigclass + '\'' +
                ", smallclass='" + smallclass + '\'' +
                ", numberType='" + numberType + '\'' +
                ", product='" + product + '\'' +
                ", cityVillage='" + cityVillage + '\'' +
                ", internetbundle='" + internetbundle + '\'' +
                ", usernumber=" + usernumber +
                ", znumber=" + znumber +
                ", costtime='" + costtime + '\'' +
                ", beforFee=" + beforFee +
                ", afterFee=" + afterFee +
                ", tablename='" + tablename + '\'' +
                ", serialNumber=" + serialNumber +
                ", time=" + time +
                '}';
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

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product == null ? null : product.trim();
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

    public String getCosttime() {
        return costtime;
    }

    public void setCosttime(String costtime) {
        this.costtime = costtime == null ? null : costtime.trim();
    }

    public Double getBeforFee() {
        return beforFee;
    }

    public void setBeforFee(Double beforFee) {
        this.beforFee = beforFee;
    }

    public Double getAfterFee() {
        return afterFee;
    }

    public void setAfterFee(Double afterFee) {
        this.afterFee = afterFee;
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