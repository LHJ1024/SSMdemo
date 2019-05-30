package org.ssmdeem.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class A435_2 {
    private Integer id;

    private String placename;

    private String sp;

    private String voicestation;

    private Double beforFee;

    private Double fee;

    private Double afterFee;

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

    public String getSp() {
        return sp;
    }

    public void setSp(String sp) {
        this.sp = sp == null ? null : sp.trim();
    }

    public String getVoicestation() {
        return voicestation;
    }

    public void setVoicestation(String voicestation) {
        this.voicestation = voicestation == null ? null : voicestation.trim();
    }

    public Double getBeforFee() {
        return beforFee;
    }

    public void setBeforFee(Double beforFee) {
        this.beforFee = beforFee;
    }

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
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