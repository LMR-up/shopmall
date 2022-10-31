package com.dfrz.service;

import com.dfrz.bean.Goods;
import com.dfrz.bean.User;
import com.dfrz.vo.GoodsVo;

import java.util.List;

public interface GoodsService {

    List<Goods> queryGoods(GoodsVo goodsVo);
    int actionStatue(String gid);

    int stopStatue(String gid);

    Goods findGoodById(String gid);

    int Update(Goods  goods);

    int insertGood(Goods  goods);

    int deleteall(String[] gidlist);

    Goods findGoodByGname(String goodname);
}
