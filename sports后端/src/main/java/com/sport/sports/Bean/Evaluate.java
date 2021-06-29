package com.sport.sports.Bean;

public class Evaluate {
    private String orderid;
    private String goodsname;
    private String offerman;
    private String timeevaluate;//时间评价
    private String altitudeevaluate;//金额评价
    private String transevaluate;//运输评价

    public String getOrderid() {
        return orderid;
    }

    @Override
    public String toString() {
        return "Evaluate{" +
                "orderid='" + orderid + '\'' +
                ", goodsname='" + goodsname + '\'' +
                ", offerman='" + offerman + '\'' +
                ", timeevaluate='" + timeevaluate + '\'' +
                ", altitudeevaluate='" + altitudeevaluate + '\'' +
                ", transevaluate='" + transevaluate + '\'' +
                '}';
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getOfferman() {
        return offerman;
    }

    public void setOfferman(String offerman) {
        this.offerman = offerman;
    }

    public String getTimeevaluate() {
        return timeevaluate;
    }

    public void setTimeevaluate(String timeevaluate) {
        this.timeevaluate = timeevaluate;
    }

    public String getAltitudeevaluate() {
        return altitudeevaluate;
    }

    public void setAltitudeevaluate(String altitudeevaluate) {
        this.altitudeevaluate = altitudeevaluate;
    }

    public String getTransevaluate() {
        return transevaluate;
    }

    public void setTransevaluate(String transevaluate) {
        this.transevaluate = transevaluate;
    }

    public Evaluate(String orderid, String goodsname, String offerman, String timeevaluate, String altitudeevaluate, String transevaluate) {
        this.orderid = orderid;
        this.goodsname = goodsname;
        this.offerman = offerman;
        this.timeevaluate = timeevaluate;
        this.altitudeevaluate = altitudeevaluate;
        this.transevaluate = transevaluate;
    }

    public Evaluate() {
    }
}
