package com.sport.sports.Bean;

public class Offer {//报价表
    private String offerid;
    private String orderid;
    private String offerman;
    private int money;
    private String offername;

    public Offer() {
    }

    public String getOfferid() {
        return offerid;
    }

    @Override
    public String toString() {
        return "Offer{" +
                "offerid='" + offerid + '\'' +
                ", orderid='" + orderid + '\'' +
                ", offerman='" + offerman + '\'' +
                ", money='" + money + '\'' +
                ", offername='" + offername + '\'' +
                '}';
    }

    public void setOfferid(String offerid) {
        this.offerid = offerid;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getOfferman() {
        return offerman;
    }

    public void setOfferman(String offerman) {
        this.offerman = offerman;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getOffername() {
        return offername;
    }

    public void setOffername(String offername) {
        this.offername = offername;
    }

    public Offer(String offerid, String orderid, String offerman, int money, String offername) {
        this.offerid = offerid;
        this.orderid = orderid;
        this.offerman = offerman;
        this.money = money;
        this.offername = offername;
    }
}
