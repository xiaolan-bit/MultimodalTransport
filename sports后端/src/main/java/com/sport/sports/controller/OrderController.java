package com.sport.sports.controller;

import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.*;
import com.sport.sports.dao.OrderDao;
import com.sport.sports.dao.UserDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Date;
import java.text.SimpleDateFormat;

@RestController
public class OrderController {
    @Autowired
    private OrderDao odao;
    private UserDao udao;
    int num;
    @CrossOrigin
    @RequestMapping("/allorder")
    public  String getOrderList(QueryInfo queryInfo){
        //获取最大列表数
        int numbers = odao.getOrderCounts("%"+queryInfo.getQuery()+"%");
        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

//        List<Order> orders = odao.getAllOrder("%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
//        只有完全输入orderid才能搜索出来
        List<Order> orders = odao.getAllOrder(queryInfo.getQuery(),pageStart,queryInfo.getPageSize());

        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/addOrder")
    public String addOrder(@RequestBody Order order,QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
        order.setOrderid(num1);
        order.setRoute("正在等候接单");


        int i = odao.addOrder(order);
        return i >0?"success":"error";
    }

    @RequestMapping("/addhuodaiOrder")
    public String addhuodaiOrder(@RequestBody Order order,QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
        order.setOrderid(num1);
        order.setRoute("货代直发");


        int i = odao.addOrder(order);
        return i >0?"success":"error";
    }

    @RequestMapping("/allmyorder")
    public  String getmyOrderList(QueryInfo queryInfo){
        //获取最大列表数
        int numbers = odao.getOrderCount("%"+queryInfo.getQuery()+"%");
        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

//        List<Order> orders = odao.getAllOrder("%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
//        只有完全输入orderid才能搜索出来
        List<Order> orders = odao.getAllmyOrder(queryInfo.getQuery(),pageStart,queryInfo.getPageSize());

        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }


    @RequestMapping("/showorder")
    public String showorder(String userid,QueryInfo queryInfo)
    {

        int numbers = odao.getOrderCount(userid);
        num =numbers+1;

        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Order> orders = odao.showorder(userid,pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/getNeworder")
    public String getNeworder(String userid)
    {

        int numbers = odao.getOrderCount("%"+userid+"%");
        num =numbers+1;

        List<Order> orders = odao.getNeworder(userid);
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/getmyNeworder")
    public String getmyNeworder(String userid,String username)
    {


        List<Order> orders = odao.getmyNeworder(userid, username);
        HashMap<String ,Object> res = new HashMap<>();
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/showorderstate")
    public String showorderstate(QueryInfo queryInfo)
    {

        int numbers = odao.getOrderstateCount("%"+queryInfo.getQuery()+"%");
        num =numbers+1;

        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Order> orders = odao.showorderstate(queryInfo.getQuery(),pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/getorder")
    public String getorder(String orderid)
    {
        Order order = odao.getorder(orderid);
        String string = JSON.toJSONString(order);
        System.out.println(string);
        return string;
    }

    @RequestMapping("/gethuodaiorder")
    public String gethuodaiorder(String userid,QueryInfo queryInfo)
    {
        System.out.println(userid);
        int numbers = odao.getOrderCount(userid);
        num =numbers+1;

        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<Order> orders = odao.gethuodaiorder(userid,pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        System.out.println(res);
        return res_string;
    }

    @RequestMapping("/updateorder")
    public String updateorder(String orderid)
    {
        int j = odao.updateorder(orderid);
        return j >0?"success":"error";
    }

    @RequestMapping("/addorderstate")
    public String addorderstate(@RequestBody Order order)
    {
        SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-d HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
        order.setTimerecord(num1);
        int i = odao.addorderstate(order);
        return i >0?"success":"error";
    }

    @RequestMapping("/checkrouteend")
    public String checkrouteend(String orderid,String endaddress)
    {
        System.out.println(orderid);
        System.out.println(endaddress);
        int j = odao.checkrouteend(orderid, endaddress);
        return j >0?"success":"error";
    }

    @RequestMapping("/getcompleteorder")
    public String getcompleteorder(int userid)
    {
        List<Order> orders = odao.getcompleteorder(userid);
        HashMap<String ,Object> res = new HashMap<>();
        res.put("data",orders);
        String res_string = JSON.toJSONString(res);
        System.out.println(res);
        return res_string;
    }

    @RequestMapping("/updateorderstate")
    public String updateorderstate(String orderid)
    {
        System.out.println(orderid);
        int j = odao.updateorderstate(orderid);
        return j >0?"success":"error";
    }

    @RequestMapping("/addboxid")
    public String addboxid(String orderid,String boxid)
    {
        System.out.println(orderid);
        int j = odao.addboxid(orderid, boxid);
        return j >0?"success":"error";
    }

    @RequestMapping("/addmyOrder")
    public String addmyOrder(@RequestBody Order order,QueryInfo queryInfo)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
        System.out.println(df.format(new Date())+"创建订单");// new Date()为获取当前系统时间
        String num1  = df.format(new Date()).toString();
        order.setOrderid(num1);
        order.setRoute("已指定货代");


        int i = odao.addmyOrder(order);
        return i >0?"success":"error";
    }

    @RequestMapping("/getsanxiang")
    public int getsanxiang(){
        int i=odao.getsannum();

        return i;
    }

    @RequestMapping("/moneytuijian")
    public String moneytuijian(String startaddress,String endaddress){
        List<Order> money=odao.moneytuijian(startaddress, endaddress);
        System.out.println(startaddress);
        HashMap<String ,Object> res = new HashMap<>();
        System.out.println(res);
        res.put("data",money);
        String res_string = JSON.toJSONString(res);
        System.out.println("money推荐");
        System.out.println(res_string);
        return res_string;
    }

    @RequestMapping("/sanxiangnum")
    public String sanxiangnum(){
        int san=odao.getsannum();
        int xiang=odao.getxiangnum();
        HashMap<String ,Object> res = new HashMap<>();
        System.out.println(res);
        res.put("sannum",san);
        res.put("xiangnum", xiang);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);
        return res_string;
    }

    @RequestMapping("/huodainum")
    public String huodainum(){
        int zhongyuan=odao.get10();
        int sunfeng=odao.get11();
        int jingdong=odao.get12();
        int zhongguo=odao.get24();
        HashMap<String ,Object> res = new HashMap<>();
        System.out.println(res);
        res.put("zhongyuan",zhongyuan);
        res.put("sunfeng", sunfeng);
        res.put("jingdong",jingdong);
        res.put("zhongguo", zhongguo);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);
        return res_string;

    }

    @RequestMapping("/getday")
    public String getday() {
        ArrayList<Integer> list = new ArrayList<>();
        HashMap<String ,List<Integer>> res = new HashMap<>();
        list.add(12);
        list.add(11);
        list.add(10);
        list.add(5);
        res.put("松滋港", list);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);
        return res_string;
    }
}
