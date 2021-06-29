package com.sport.sports.Bean;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;
import java.util.Date;

public class Order {
    String orderid;
    int userid;
    String route;
    int money;
    String offerman;
    String startaddress;
    String endaddress;
    String receivername;
    String receivertelnum;
    String boxid;
    String goodsname;
    String goodssize;
    String goodsweight;
    String inoutside;
    String state;

    //订单状态
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    String timerecord;
    String lateststatus;
    String location;
    String transportation;

    public String getOrderid() {
        return orderid;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderid='" + orderid + '\'' +
                ", userid=" + userid +
                ", route='" + route + '\'' +
                ", money='" + money + '\'' +
                ", offerman='" + offerman + '\'' +
                ", startaddress='" + startaddress + '\'' +
                ", endaddress='" + endaddress + '\'' +
                ", receivername='" + receivername + '\'' +
                ", receivertelnum='" + receivertelnum + '\'' +
                ", boxid='" + boxid + '\'' +
                ", goodsname='" + goodsname + '\'' +
                ", goodssize='" + goodssize + '\'' +
                ", goodsweight='" + goodsweight + '\'' +
                ", inoutside='" + inoutside + '\'' +
                ", state='" + state + '\'' +
                ", timerecord='" + timerecord + '\'' +
                ", lateststatus='" + lateststatus + '\'' +
                ", location='" + location + '\'' +
                ", transportation='" + transportation + '\'' +
                '}';
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getOfferman() {
        return offerman;
    }

    public void setOfferman(String offerman) {
        this.offerman = offerman;
    }

    public String getStartaddress() {
        return startaddress;
    }

    public void setStartaddress(String startaddress) {
        this.startaddress = startaddress;
    }

    public String getEndaddress() {
        return endaddress;
    }

    public void setEndaddress(String endaddress) {
        this.endaddress = endaddress;
    }

    public String getReceivername() {
        return receivername;
    }

    public void setReceivername(String receivername) {
        this.receivername = receivername;
    }

    public String getReceivertelnum() {
        return receivertelnum;
    }

    public void setReceivertelnum(String receivertelnum) {
        this.receivertelnum = receivertelnum;
    }

    public String getBoxid() {
        return boxid;
    }

    public void setBoxid(String boxid) {
        this.boxid = boxid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getGoodssize() {
        return goodssize;
    }

    public void setGoodssize(String goodssize) {
        this.goodssize = goodssize;
    }

    public String getGoodsweight() {
        return goodsweight;
    }

    public void setGoodsweight(String goodsweight) {
        this.goodsweight = goodsweight;
    }

    public String getInoutside() {
        return inoutside;
    }

    public void setInoutside(String inoutside) {
        this.inoutside = inoutside;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getTimerecord() {
        return timerecord;
    }

    public void setTimerecord(String timerecord) {
        this.timerecord = timerecord;
    }

    public String getLateststatus() {
        return lateststatus;
    }

    public void setLateststatus(String lateststatus) {
        this.lateststatus = lateststatus;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTransportation() {
        return transportation;
    }

    public void setTransportation(String transportation) {
        this.transportation = transportation;
    }

    public Order(String orderid, String timerecord, String lateststatus, String location, String transportation) {
        this.orderid = orderid;
        this.timerecord = timerecord;
        this.lateststatus = lateststatus;
        this.location = location;
        this.transportation = transportation;
    }

    public Order(String orderid, int userid, String route, int money, String offerman, String startaddress, String endaddress, String receivername, String receivertelnum, String boxid, String goodsname, String goodssize, String goodsweight, String inoutside, String state) {
        this.orderid = orderid;
        this.userid = userid;
        this.route = route;
        this.money = money;
        this.offerman = offerman;
        this.startaddress = startaddress;
        this.endaddress = endaddress;
        this.receivername = receivername;
        this.receivertelnum = receivertelnum;
        this.boxid = boxid;
        this.goodsname = goodsname;
        this.goodssize = goodssize;
        this.goodsweight = goodsweight;
        this.inoutside = inoutside;
        this.state = state;
    }

    public Order() {
    }
}
