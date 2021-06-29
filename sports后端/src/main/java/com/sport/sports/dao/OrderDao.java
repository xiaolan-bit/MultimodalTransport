package com.sport.sports.dao;

import com.sport.sports.Bean.Order;
import com.sport.sports.Bean.QueryInfo;
import com.sport.sports.Bean.Route;
import com.sport.sports.Bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Repository
public interface OrderDao {
    public List<Order> getAllOrder(@Param("orderid") String orderid, @Param("pageStart") int PageStart, @Param("pageSize") int pageSize);
    public int getOrderCounts(@Param("orderid")  String orderid);
    public String addOrder(@RequestBody Order order, QueryInfo queryInfo);
    public List<Order> getAllmyOrder(@Param("userid") String userid, @Param("pageStart") int PageStart, @Param("pageSize") int pageSize);
    public int getOrderCount(@Param("userid")  String userid);
    public int addOrder(Order order);
    public int addmyOrder(Order order);
    public List<Order> showorder(@Param("userid") String userid,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    public List<Order> getNeworder(@Param("userid") String userid);
    public List<Order> getmyNeworder(@Param("userid") String userid,@Param("username") String username);
    public Order getorder(@Param("orderid") String orderid);

    //订单状态
    public int getOrderstateCount(@Param("orderid")  String orderid);
    public List<Order> showorderstate(@Param("orderid") String orderid,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    //给个人订单加箱
    public int addboxid(@Param("orderid") String orderid,@Param("boxid") String boxid);

    //货代添加路线显示订单
    public List<Order> gethuodaiorder(@Param("userid") String userid,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    //货代添加路线后orderlist里的route变化
    public int updateorder(@Param("orderid") String orderid);
    //增加orderstate
    public int addorderstate(Order order);
    //确认这段路径的终点是不是整个订单的终点
    public int checkrouteend(@Param("orderid") String orderid,@Param("endaddress") String endaddress);
    //展示已完成的订单
    public List<Order> getcompleteorder(@Param("userid") int userid);
    //将已完成评价的订单状态改为‘已评价’
    public int updateorderstate(@Param("orderid") String orderid);
    //指定货代报价
    public int checkofferman(@Param("personchargenow") String personchargenow);
    //通过名称找id
    public String getmyid(@Param("username") String username);

    //根据订单号查询到箱号
    public String getboxid(@Param("orderid") String orderid);

    //关于图形的数据
    public int getsannum();//散货
    public int getxiangnum();//箱货
    public int get10();
    public int get11();
    public int get12();
    public int get24();

    //价格推荐
    public List<Order> moneytuijian(@Param("startaddress") String startaddress,@Param("endaddress") String endaddress);
}
