package com.dfrz.controller;

import com.dfrz.homepage.VO.ShopCartOV;
import com.dfrz.service.ShopCartService;
import com.dfrz.service.impl.ShopCartServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.dfrz.util.Uuid;
import com.google.gson.Gson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ShopCartServlet extends BaseServlet {
    private ShopCartService shopCartService = new ShopCartServiceImpl();
    private Gson gson = new Gson();
    void addShopCart(HttpServletRequest Request , HttpServletResponse Response) {
        String goodsId = Request.getParameter("GoodsId");
        String userid = Request.getParameter("Userid");
        shopCartService.AddShopCart(new Uuid().uuid(),goodsId,userid);
    }
    void delShopCart(HttpServletRequest Request , HttpServletResponse Response) {
        String shopCartID = Request.getParameter("ShopCartID");
        String num = Request.getParameter("num");
        int i = Integer.parseInt(num);
        shopCartService.DeleteShopCart(shopCartID,i);
    }
    void getShopCartOV(HttpServletRequest Request , HttpServletResponse Response) throws IOException {
        String userId = Request.getParameter("UserId");
        List<ShopCartOV> shopCartList = shopCartService.getShopCartList(userId);
        String s = gson.toJson(shopCartList);
        Response.getWriter().write(s);
    }
}
