package com.sport.sports.dao;


import com.sport.sports.Bean.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.sql.Timestamp;
import java.util.List;

@Repository
public interface RouteDao {
    public List<Route> getAllRoute(@Param("placeA") String placeA,@Param("placeB") String placeB,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    public List<Route> showroute(@Param("placeA") String placeA,@Param("placeB") String placeB,@Param("way") String way);

    public int getRouteCounts(@Param("placeA")  String placeA,@Param("placeB")  String placeB,@Param("way") String way);
    public int addRoute(Route route);
    public List<Route> getroute(@Param("orderid") String orderid);
    public int getRouteCount(@Param("orderid") String orderid);
    public List<Route> getmypersonchargeroute(@Param("userid") String userid);
    //完成一段路径以后修改personchargeid+over，使再次进入系统行程目录时不再显示已完成项目
    public int updateliststate(@Param("personchargeid") String personchargeid,@Param("orderid") String orderid,@Param("placeA") String placeA,@Param("placeB") String placeB,@Param("way") String way,@Param("transnum") String transnum,@Param("personcharge") String personcharge,@Param("telnum") String telnum);

    //时间推荐
    public List<Route> timetuijian(@Param("startaddress") String startaddress, @Param("endaddress") String endaddress);

    //得到路径
    public List<Route> showtuijianroute(@Param("orderid") String orderid,@Param("placeA") String placeA,@Param("placeB") String placeB);
    //得到placeA
    public List<String> showplaceAs(@Param("orderid") String orderid,@Param("placeA") String placeA,@Param("placeB") String placeB);
}
