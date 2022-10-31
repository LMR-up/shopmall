package com.dfrz.service.impl;

import com.dfrz.dao.GoodDao;
import com.dfrz.dao.impl.GoodDaoImpl;
import com.dfrz.homepage.VO.GoodsOV;
import com.dfrz.homepage.bean.Goods;
import com.dfrz.service.GoodService;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class GoodServiceImpl implements GoodService {
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  //时间格式

    private GoodDao goodsDao = new GoodDaoImpl();
    @Override
    public List<GoodsOV> getGoodsList(int GoodTypeID) {
        List<Goods> goodsList = goodsDao.getGoodsList(GoodTypeID);
        List<GoodsOV> goodsOV = new ArrayList<>();
        for (Goods goods: goodsList) {
            goodsOV.add(new GoodsOV(goods.getId(),goods.getGname(),goods.getPrice(),goods.getNum(),goods.getCreatetime(),goods.getDetail(),goods.getGpic(),goods.getStatus(),goods.getGtype()));
        }
        return goodsOV;
    }
}
