package com.sport.sports.dao;


import com.sport.sports.Bean.Message;
import com.sport.sports.Bean.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageDao {
    public int addmessage(Message message);
    public List<Message> getmessage(@Param("place") String place);
}
