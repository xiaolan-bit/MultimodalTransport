package com.sport.sports.controller;

import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.MainMenu;
import com.sport.sports.dao.MenuDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@Repository
@RestController
public class MenuController {
    @Autowired
    MenuDao menuDao;

    @RequestMapping("/menus")
    public String getAllMenus(String role){
        System.out.println("访问成功");
        System.out.println(role);
        HashMap<String, Object>  data = new HashMap<>();
        List <MainMenu> menus = menuDao.getMenus(role);
        if(menus!=null){
            data.put("menus",menus);
            data.put("flag",200);
        }else{
            data.put("flag",404);
        }
        String s = JSON.toJSONString(data);
        return s;
    }

    @RequestMapping("/getrole")
    public String getrole(int id){
        String role = menuDao.getrole(id);
        System.out.println(role);
        return role;
    }
}
