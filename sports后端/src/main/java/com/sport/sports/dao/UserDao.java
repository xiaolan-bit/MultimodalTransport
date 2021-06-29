package com.sport.sports.dao;

import com.sport.sports.Bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    public User getUserByMassage(@Param("password")  String password,@Param("id")  int id);
    public List<User> getAllUser(@Param("username") String username,@Param("pageStart") int PageStart,@Param("pageSize") int pageSize);
    public int getUserCounts(@Param("username")  String username);
    public int updateState( @Param("id") Integer id, @Param("state") Boolean state);
    public int addUser(User user);
    public int deleteUser(int id);
    public User getUpdateUser(int id);
    public int editUser(User user);
    public int updateRole(@Param("id") Integer id,@Param("role") String role);
    public int getuserid(int id);
    public String getname(@Param("id") int id);
}
