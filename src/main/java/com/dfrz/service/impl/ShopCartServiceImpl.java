package com.dfrz.service.impl;

import com.dfrz.dao.GoodDao;
import com.dfrz.dao.ShopCartDao;
import com.dfrz.dao.impl.GoodDaoImpl;
import com.dfrz.dao.impl.ShopCartDaoImpl;
import com.dfrz.homepage.VO.ShopCartOV;
import com.dfrz.homepage.bean.Goods;
import com.dfrz.homepage.bean.ShopCart;
import com.dfrz.service.ShopCartService;

import java.util.ArrayList;
import java.util.List;

public class ShopCartServiceImpl implements ShopCartService {
    private ShopCartDao shopCartDao = new ShopCartDaoImpl();
    private GoodDao goodsdao =  new GoodDaoImpl();
    @Override
    public List<ShopCartOV> getShopCartList(String UserId) {
        List<ShopCartOV> shopCartOVList = new ArrayList<>();
        List<ShopCart> shopCarts = shopCartDao.queryShopCart(UserId);
        for (ShopCart sc:shopCarts) {
            Goods goods = goodsdao.getGoods(sc.getGid());
            shopCartOVList.add(new ShopCartOV(sc.getId(),goods.getId(),goods.getGname(),goods.getGpic(),goods.getPrice(),sc.getGnum(),sc.getUid()));
        }
        return shopCartOVList;
    }

    @Override
    public void DeleteShopCart(String ShopCartID,int num) {
        if(num==1){
            shopCartDao.DeleteShopCart(ShopCartID);
        }else{
            shopCartDao.UpdataShopCart(num-1,ShopCartID);
        }
    }

    @Override
    public void AddShopCart(String Id, String GoodsId, String Userid) {
        ShopCart shopCart = shopCartDao.queryShopCartId(Userid, GoodsId);
        if(shopCart==null){
            shopCartDao.addShopCart(Id,GoodsId,1,Userid);
        }else{
            shopCartDao.UpdataShopCart(shopCart.getGnum()+1,shopCart.getId());
        }
    }

    @Override
    public void DeleteAll(String UserID) {
        shopCartDao.deleteAll(UserID);
    }
}