package com.sport.sports.Bean;

import java.sql.Timestamp;
import com.fasterxml.jackson.annotation.JsonFormat;


public class Message {
    String place;
    String transnum;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    String timenow;
    String inoutside;

    public Message() {
    }

    @Override
    public String toString() {
        return "Message{" +
                "place='" + place + '\'' +
                ", transnum='" + transnum + '\'' +
                ", timenow='" + timenow + '\'' +
                ", inoutside='" + inoutside + '\'' +
                '}';
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getTransnum() {
        return transnum;
    }

    public void setTransnum(String transnum) {
        this.transnum = transnum;
    }

    public String getTimenow() {
        return timenow;
    }

    public void setTimenow(String timenow) {
        this.timenow = timenow;
    }

    public String getInoutside() {
        return inoutside;
    }

    public void setInoutside(String inoutside) {
        this.inoutside = inoutside;
    }

    public Message(String place, String transnum, String timenow, String inoutside) {
        this.place = place;
        this.transnum = transnum;
        this.timenow = timenow;
        this.inoutside = inoutside;
    }
}
