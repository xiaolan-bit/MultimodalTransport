package com.sport.sports.dao;


import com.sport.sports.Bean.MainMenu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MenuDao {
    public List<MainMenu> getMenus(@Param("role") String role);

    public String getrole(@Param("id") int id);
}
