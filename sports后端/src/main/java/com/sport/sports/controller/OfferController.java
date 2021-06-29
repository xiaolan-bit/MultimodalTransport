package com.sport.sports.controller;

import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.Offer;
import com.sport.sports.Bean.Order;
import com.sport.sports.Bean.QueryInfo;
import com.sport.sports.Bean.User;
import com.sport.sports.dao.OrderDao;
import com.sport.sports.dao.UserDao;
import com.sport.sports.dao.OfferDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


@RestController
public class OfferController {

    @Autowired
    private OfferDao ofdao;
    @Autowired
    private OrderDao odao;
    int num;
    @CrossOrigin


    @RequestMapping("/addOffer")
    public String addOffer(@RequestBody Offer offer, QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
        offer.setOfferid(num1);
//        offer.setOfferman("abc");
//        offer.setOrderid("12313");
//        offer.setMoney("313");

//        offer.setRoute("正在等候接单");
//        offer.setPersonchargenow("待定负责人");
//        offer.setExpecteddeliverytime("待定送达时间");


        int j = ofdao.addOffer(offer);
        return j >0?"success":"error";
    }

    @RequestMapping("/showoffer")
    public String showoffer(int userid,String offerid,QueryInfo queryInfo)
    {
        int numbers = ofdao.getOfferCounts(offerid);
        num =numbers+1;

        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Offer> offers= ofdao.showoffer(userid,offerid,pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",offers);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/confirmoffer")
    public  String confirmoffer(@RequestParam("orderid") String orderid,@RequestParam("money") int money,@RequestParam("offerman") String offerman){
        int j = ofdao.confirmoffer(orderid, money, offerman);
        return j >0?"success":"error";
    }

    @RequestMapping("/deleteoffer")
    public String deleteoffer(String orderid){
        System.out.println(orderid);
        int i = ofdao.deleteoffer(orderid);
        return i>0 ?"success":"error";
    }
}
