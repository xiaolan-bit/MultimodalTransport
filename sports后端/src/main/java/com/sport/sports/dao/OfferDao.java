package com.sport.sports.dao;


import com.sport.sports.Bean.Offer;
import com.sport.sports.Bean.Order;
import com.sport.sports.Bean.QueryInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Repository
public interface OfferDao {

    public int getOfferCounts(@Param("offerid")  String offerid);
    public String addOffer(@RequestBody Offer offer, QueryInfo queryInfo);
    public int addOffer(Offer offer);
    public List<Offer> showoffer(@Param("userid") int userid,@Param("offerid") String offerid,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    public int confirmoffer(@Param("orderid") String orderid,@Param("money") int money,@Param("offerman") String offerman);
    public int deleteoffer(String orderid);
}
