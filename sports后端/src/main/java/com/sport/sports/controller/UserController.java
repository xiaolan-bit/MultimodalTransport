package com.sport.sports.controller;


import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.QueryInfo;
import com.sport.sports.Bean.User;
import com.sport.sports.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@RestController
public class UserController {
    @Autowired
    private UserDao udao;
    int num;
    @CrossOrigin
    @RequestMapping("/alluser")
    public  String getUserList(QueryInfo queryInfo){
        //获取最大列表数
        int numbers = udao.getUserCounts("%"+queryInfo.getQuery()+"%");
        num =numbers+1;
        int pageStart =  (queryInfo.getPageNum()-1) * queryInfo.getPageSize();

        List<User> users = udao.getAllUser("%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
        HashMap<String ,Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",users);
        String res_string = JSON.toJSONString(res);
        return res_string;
    }

    @RequestMapping("/userstate")
    public String updateUserState(@RequestParam("id") Integer id,
                                  @RequestParam("state") Boolean state){
        int i = udao.updateState(id,state);
        return i>0 ? "success" : "error";
    }

    @RequestMapping("/addUser")
    public String addUser(@RequestBody User user)
    {
        user.setId(num);

        user.setState(false);
        int i = udao.addUser(user);
        return i >0?"success":"error";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(int id){
        int i = udao.deleteUser(id);
        return i>0 ?"success":"error";
    }

    @RequestMapping("/getupdate")
    public  String getUpdate(int id){
        User user = udao.getUpdateUser(id);
        String string = JSON.toJSONString(user);
        return string;
    }

    @RequestMapping("/edituser")
    public  String editUser(@RequestBody User user){
        int i = udao.editUser(user);
        return i>0? "success":"error";
    }

    @RequestMapping("/updaterole")
    public  String updateRole(@RequestParam("id") Integer id,
                              @RequestParam("role") String role){
        int i = udao.updateRole(id,role);
        return i>0 ? "success" : "error";
    }

    @RequestMapping("/getuserid")
    public  int getuserid(@RequestParam("id") Integer id){
        int user = id;
        return user;
    }

    @RequestMapping("/getname")
    public  String getname(int id){
        String string = udao.getname(id);
        return string;
    }
}
