package com.sport.sports.controller;


import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.Message;
import com.sport.sports.Bean.Order;
import com.sport.sports.Bean.QueryInfo;
import com.sport.sports.dao.MessageDao;
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
public class MessgaeController {
    @Autowired
    private MessageDao mdao;

    @CrossOrigin
    @RequestMapping("/addmessage")
    public String addmessage(@RequestBody Message message)
    {
        SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-d HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date())+"创建日志");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
//        order.setOrderid(num1);
//        order.setRoute("正在等候接单");
//
//
//        int i = odao.addOrder(order);
//        return i >0?"success":"error";
        message.setTimenow(num1);
        int i=mdao.addmessage(message);
        return i >0?"success":"error";
    }

    @RequestMapping("/getmessage")
    public  String getmessage(String place){
        //获取最大列表数
        List<Message> messages = mdao.getmessage(place);

        HashMap<String ,Object> res = new HashMap<>();
        res.put("data",messages);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }
}
