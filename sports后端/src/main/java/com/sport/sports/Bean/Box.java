package com.sport.sports.Bean;

public class Box {
     String boxid;
     String boxtype;
     String boxowner;
     String boxweight;
     String boxstate;
     String isempty;

    public String getBoxid() {
        return boxid;
    }

    public void setBoxid(String boxid) {
        this.boxid = boxid;
    }

    @Override
    public String toString() {
        return "Box{" +
                "boxid='" + boxid + '\'' +
                ", boxtype='" + boxtype + '\'' +
                ", boxowner='" + boxowner + '\'' +
                ", boxweight='" + boxweight + '\'' +
                ", boxstate='" + boxstate + '\'' +
                ", isempty='" + isempty + '\'' +
                '}';
    }

    public String getBoxtype() {
        return boxtype;
    }

    public void setBoxtype(String boxtype) {
        this.boxtype = boxtype;
    }

    public String getBoxowner() {
        return boxowner;
    }

    public void setBoxowner(String boxowner) {
        this.boxowner = boxowner;
    }

    public String getBoxweight() {
        return boxweight;
    }

    public void setBoxweight(String boxweight) {
        this.boxweight = boxweight;
    }

    public String getBoxstate() {
        return boxstate;
    }

    public void setBoxstate(String boxstate) {
        this.boxstate = boxstate;
    }

    public String getIsempty() {
        return isempty;
    }

    public void setIsempty(String isempty) {
        this.isempty = isempty;
    }

    public Box(String boxid, String boxtype, String boxowner, String boxweight, String boxstate, String isempty) {
        this.boxid = boxid;
        this.boxtype = boxtype;
        this.boxowner = boxowner;
        this.boxweight = boxweight;
        this.boxstate = boxstate;
        this.isempty = isempty;
    }

    public Box() {
    }
}
