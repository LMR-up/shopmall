package com.dfrz.dao;

import com.dfrz.bean.Goods;

import com.dfrz.vo.GoodsVo;

import java.util.List;

public interface GoodsDao {

    /**

     */

    List<Goods> queryGoods(GoodsVo goodsVo);
    int stopstatue(String gid);
    int actionStatue(String gid);
    Goods findGoodById(String gid);
    int Update(Goods  goods);

    int insertGood(Goods goods);

    int deleteall(String[] gidlist);


    Goods findGoodByGname(String goodname);

}
