package com.dfrz.dao.impl;

import com.dfrz.dao.ShopCartDao;
import com.dfrz.homepage.bean.ShopCart;
import com.dfrz.util.JdbcTemplate;

import java.util.List;

public class ShopCartDaoImpl extends JdbcTemplate<ShopCart> implements ShopCartDao {
    @Override
    public List<ShopCart> queryShopCart(String UserId) {
        String sql = "SELECT * FROM shopcart WHERE shopcart.uid = ?";
        return query(sql,ShopCart.class,UserId);
    }

    @Override
    public ShopCart queryShopCartId(String ShopCartId,String GoodsId) {
        String sql = "SELECT * FROM shopcart WHERE shopcart.uid = ? AND shopcart.gid = ?";
        List<ShopCart> query = query(sql, ShopCart.class, ShopCartId, GoodsId);
        if(query.isEmpty()){
            return null;
        }
        return query.get(0);
    }

    @Override
    public ShopCart queryShopCartId(String ShopCartId) {
        String sql = "SELECT * FROM shopcart WHERE shopcart.id = ?";
        return QueryById(sql,ShopCart.class,ShopCartId);
    }

    @Override
    public void DeleteShopCart(String ShopCartID) {
        String sql = "DELETE FROM shopcart WHERE shopcart.id = ?";
        dml(sql,ShopCartID);
    }

    @Override
    public void addShopCart(String Id, String GoodsId, int num, String Userid) {
        String sql = "INSERT INTO shopcart VALUES(?,?,?,?)";
        dml(sql,Id,GoodsId,num,Userid);
    }

    @Override
    public void UpdataShopCart( int num,String Id) {
        String sql = "UPDATE shopcart SET shopcart.gnum = ? WHERE shopcart.id = ?";
        dml(sql,num,Id);
    }

    @Override
    public void deleteAll(String UserID) {
        String sql = "DELETE FROM shopcart WHERE shopcart.uid = ?";
        dml(sql,UserID);
    }
}
