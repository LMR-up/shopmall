package com.dfrz.dao;

import com.dfrz.homepage.bean.ShopCart;

import java.util.List;

public interface ShopCartDao {
     List<ShopCart> queryShopCart(String UserId);
     ShopCart queryShopCartId(String UserId,String GoodsId);
     ShopCart queryShopCartId(String ShopCartId);
     void DeleteShopCart(String ShopCartID);
     void addShopCart(String Id ,String GoodsId,int num,String Userid);
     void UpdataShopCart(int num,String Id);
     void deleteAll(String UserID);
}
