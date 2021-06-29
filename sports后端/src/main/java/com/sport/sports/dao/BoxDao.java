package com.sport.sports.dao;

import com.sport.sports.Bean.Box;
import com.sport.sports.Bean.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoxDao {
    public List<Box> getAllBox(@Param("boxid") String boxid, @Param("pageStart") int PageStart, @Param("pageSize") int pageSize);
    public int getBoxCounts(@Param("boxid")  String boxid);
    public int addbox(Box box);
    public Box makesure(String boxid);
    public int checkboxid(@Param("boxid")  String boxid);
    public List<Box> showboxstate(@Param("boxid") String boxid,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);

    //修改箱状态
    public int updateboxstate(@Param("boxid") String boxid,@Param("placeA") String placeA);
    //修改箱是否空信息
    public int updateboxisempty(@Param("boxid") String boxid,@Param("placeB") String placeB);
}
