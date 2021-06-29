package com.sport.sports.Bean;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;
public class Route {
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    String orderid;
    String placeA;
    Timestamp placeAtime;
    String placeB;
    Timestamp placeBtime;
    String way;
    String transnum;
    String personcharge;
    String telnum;
    String personchargeid;

    @Override
    public String toString() {
        return "Route{" +
                "orderid='" + orderid + '\'' +
                ", placeA='" + placeA + '\'' +
                ", placeAtime=" + placeAtime +
                ", placeB='" + placeB + '\'' +
                ", placeBtime=" + placeBtime +
                ", way='" + way + '\'' +
                ", transnum='" + transnum + '\'' +
                ", personcharge='" + personcharge + '\'' +
                ", telnum='" + telnum + '\'' +
                ", personchargeid='" + personchargeid + '\'' +
                '}';
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getPlaceA() {
        return placeA;
    }

    public void setPlaceA(String placeA) {
        this.placeA = placeA;
    }

    public Timestamp getPlaceAtime() {
        return placeAtime;
    }

    public void setPlaceAtime(Timestamp placeAtime) {
        this.placeAtime = placeAtime;
    }

    public String getPlaceB() {
        return placeB;
    }

    public void setPlaceB(String placeB) {
        this.placeB = placeB;
    }

    public Timestamp getPlaceBtime() {
        return placeBtime;
    }

    public void setPlaceBtime(Timestamp placeBtime) {
        this.placeBtime = placeBtime;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }

    public String getTransnum() {
        return transnum;
    }

    public void setTransnum(String transnum) {
        this.transnum = transnum;
    }

    public String getPersoncharge() {
        return personcharge;
    }

    public void setPersoncharge(String personcharge) {
        this.personcharge = personcharge;
    }

    public String getTelnum() {
        return telnum;
    }

    public void setTelnum(String telnum) {
        this.telnum = telnum;
    }

    public String getPersonchargeid() {
        return personchargeid;
    }

    public void setPersonchargeid(String personchargeid) {
        this.personchargeid = personchargeid;
    }

    public Route(String orderid, String placeA, Timestamp placeAtime, String placeB, Timestamp placeBtime, String way, String transnum, String personcharge, String telnum, String personchargeid) {
        this.orderid = orderid;
        this.placeA = placeA;
        this.placeAtime = placeAtime;
        this.placeB = placeB;
        this.placeBtime = placeBtime;
        this.way = way;
        this.transnum = transnum;
        this.personcharge = personcharge;
        this.telnum = telnum;
        this.personchargeid = personchargeid;
    }

    public Route() {
    }
}
