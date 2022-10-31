package com.dfrz.service;

import com.dfrz.homepage.VO.ShopCartOV;

import java.util.List;

public interface ShopCartService {
    List<ShopCartOV> getShopCartList(String UserId);
    void DeleteShopCart(String ShopCartID,int num);
    void AddShopCart(String Id ,String GoodsId,String Userid);
    void DeleteAll(String UserID);
}
