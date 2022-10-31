package com.dfrz.dao;

import java.util.Date;

public interface OrderDao {
    void addOrder(String OrderId , String Userid , Date date, int statue , double totalprice);
    void addOrderGoods(String goodsId , int goodsNum , String OrderId);
}
