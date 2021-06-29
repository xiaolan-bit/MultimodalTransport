package com.sport.sports.controller;

import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.Box;
import com.sport.sports.Bean.Order;
import com.sport.sports.Bean.QueryInfo;
import com.sport.sports.Bean.Route;
import com.sport.sports.dao.BoxDao;
import com.sport.sports.dao.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


@RestController
public class BoxController {

    @Autowired
    BoxDao bdao;
    @Autowired
    OrderDao odao;
    int num;
    @CrossOrigin


    @RequestMapping("/addbox")
    public String addbox(@RequestBody Box box, QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();

//        order.setOrderid(num1);
//        order.setRoute("正在等候接单");
//        order.setPersonchargenow("待定负责人");
//        order.setExpecteddeliverytime("待定送达时间");
        box.setBoxstate("已预定");
        int i = bdao.addbox(box);
        return i >0?"success":"error";
    }

    @RequestMapping("/checkboxid")
    public String checkboxid(String boxid) {
        int i = bdao.checkboxid(boxid);
        return i > 0 ? "1" : "0";

    }

    @RequestMapping("/showboxstate")
    public String showboxstate(QueryInfo queryInfo)
    {

        int numbers = bdao.getBoxCounts("%"+queryInfo.getQuery()+"%");
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Box> boxes = bdao.showboxstate(queryInfo.getQuery(),pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",boxes);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/changeboxstate")
    public String changeboxstate(String orderid,String placeA)
    {
        String j = odao.getboxid(orderid);
        if(j!=null){
        int i=bdao.updateboxstate(j, placeA);
        return i >0?"success":"error";}
        else return "success";
    }

    @RequestMapping("/updateboxisempty")
    public String updateboxisempty(String orderid,String placeB)
    {
        String j = odao.getboxid(orderid);
        if(j!=null){
            int i=bdao.updateboxisempty(j, placeB);
            return i >0?"success":"error";}
        else return "success";
    }
}
