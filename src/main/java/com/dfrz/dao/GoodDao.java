package com.dfrz.dao;



import com.dfrz.homepage.bean.Goods;

import java.util.List;

public interface GoodDao {
    List<Goods> getGoodsList(int typeID);
    Goods getGoods(String GoodsID);
}
