package com.sport.sports.dao;


import com.sport.sports.Bean.Evaluate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EvaluateDao {
    public int addevaluate(Evaluate evaluate);

    //根据用户评分推荐货代
    public List<Evaluate> getbestorder();
}
