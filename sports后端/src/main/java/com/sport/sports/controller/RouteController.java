package com.sport.sports.controller;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.sport.sports.Bean.*;
import com.sport.sports.dao.OrderDao;
import com.sport.sports.dao.RouteDao;
import com.sport.sports.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


@RestController
public class RouteController {

    private UserDao udao;
    int num;
    @Autowired
    private RouteDao rdao;
    @Autowired
    private OrderDao odao;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @CrossOrigin
    @RequestMapping("/allroute")
    public  String getRouteList(QueryInfo queryInfo){
        //获取最大列表数
        int numbers = rdao.getRouteCounts("%"+queryInfo.getQuery()+"%","%"+queryInfo.getQuery()+"%","%"+queryInfo.getQuery()+"%");
        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Route> routes = rdao.getAllRoute("%"+queryInfo.getQuery()+"%","%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",routes);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }


    @RequestMapping("/showroute")
    public String showroute(String placeA,String placeB,String way)
    {

        int numbers = rdao.getRouteCounts("%"+placeA+"%","%"+placeB+"%","%"+way+"%");
        num =numbers+1;

        List<Route> routes = rdao.showroute(placeA,placeB,"%"+way+"%");
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",routes);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/addRoute")
    public String addOrder(@RequestBody Route route, QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
//        route.setOrderid(num1);
//        order.setRoute("正在等候接单");
//        order.setPersonchargenow("待定负责人");
//        order.setExpecteddeliverytime("待定送达时间");


        int i = rdao.addRoute(route);
        return i >0?"success":"error";
    }

    @RequestMapping("/getroute")
    public String getroute(String orderid)
    {

        int numbers = rdao.getRouteCount(orderid);
        num =numbers+1;

        List<Route> routes = rdao.getroute(orderid);
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",routes);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/getmypersonchargeroute")
    public  String getmypersonchargeroute(String userid)
    {
        int numbers = rdao.getRouteCount(userid);
        num =numbers+1;

        List<Route> routes = rdao.getmypersonchargeroute(userid);
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",routes);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/updateliststate")
    public String updateliststate(String personchargeid,String orderid, String placeA, String placeB, String way, String transnum,  String personcharge,  String telnum)
    {
        String s = "over";
        String s1=personchargeid+s;
        System.out.println(s1);
        System.out.println(placeA);
        int j = rdao.updateliststate(s1, orderid, placeA, placeB, way, transnum, personcharge, telnum);
        return j >0?"success":"error";
    }

    @RequestMapping("/timetuijian")
    public String timetuijian(String startaddress,String endaddress){
        String s1=startaddress.substring(0, 2);
        System.out.println(s1);
        String s2=endaddress.substring(0, 2);
        System.out.println((s2));
        List<Route> time=rdao.timetuijian(s1, s2);
        HashMap<String ,Object> res = new HashMap<>();
        System.out.println(res);
        res.put("data",time);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);
        return res_string;
    }
    @RequestMapping("/showtuijianroute")
    public String showtuijianroute(String orderid, String placeA,String placeB){

//        System.out.println(placeAtime);
        System.out.println(2222);
        List<Route> routes=rdao.showtuijianroute(orderid, placeA, placeB);

        List<String> placeAs=rdao.showplaceAs(orderid, placeA, placeB);
        placeAs.add(placeB);
        System.out.println(placeAs);
        System.out.println("this is placeA");
        System.out.println(placeA);
        System.out.println(11111);
        HashMap<String ,Object> res = new HashMap<>();
        System.out.println(res);
        res.put("data",routes);
        res.put("placeAs", placeAs);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);
        return res_string;
    }

}
