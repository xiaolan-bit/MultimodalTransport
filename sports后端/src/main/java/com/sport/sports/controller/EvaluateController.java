package com.sport.sports.controller;


import com.alibaba.fastjson.JSON;
import com.sport.sports.Bean.Evaluate;
import com.sport.sports.Bean.Order;
import com.sport.sports.dao.EvaluateDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class EvaluateController {
    @Autowired
    private EvaluateDao edao;

    @CrossOrigin
    @RequestMapping("/addevaluate")
    public String addevaluate(@RequestBody Evaluate evaluate){
        int i = edao.addevaluate(evaluate);
        return i >0?"success":"error";
    }

    @RequestMapping("/getbestorder")
    public String getbestorder(){
        List<Evaluate> evaluates = edao.getbestorder();

        HashMap<String ,Object> res = new HashMap<>();
        res.put("data",evaluates);
        String res_string = JSON.toJSONString(res);
        System.out.println(res_string);

        return res_string;
    }
}
