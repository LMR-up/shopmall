package com.dfrz.dao.impl;


import com.dfrz.dao.GoodDao;
import com.dfrz.homepage.bean.Goods;
import com.dfrz.util.JdbcTemplate;

import java.util.List;

public class GoodDaoImpl extends JdbcTemplate<Goods> implements GoodDao {


    @Override
    public List<Goods> getGoodsList(int typeID) {
        String sql = "SELECT goods.id,goods.gname,goods.price,goods.num,goods.createtime,goods.detail,goods.gpic,goods.status,good_type.gtype FROM goods LEFT JOIN good_type ON good_type.gid = goods.id WHERE good_type.gtype = ? and goods.status=1";
        return query(sql,Goods.class,typeID);
    }

    @Override
    public Goods getGoods(String GoodsID) {
        String sql = "SELECT goods.id,goods.gname,goods.price,goods.num,goods.createtime,goods.detail,goods.gpic,goods.status,good_type.gtype FROM goods LEFT JOIN good_type ON good_type.gid = goods.id WHERE goods.id = ? ";
        return QueryById(sql,Goods.class,GoodsID);
    }
}
