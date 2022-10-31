package com.dfrz.controller;

import com.dfrz.homepage.VO.ShopCartOV;
import com.dfrz.service.OrderService;
import com.dfrz.service.ShopCartService;
import com.dfrz.service.UserService;
import com.dfrz.service.impl.OrderServiceImpl;
import com.dfrz.service.impl.ShopCartServiceImpl;
import com.dfrz.service.impl.UserServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.google.gson.Gson;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class OrderServlet extends BaseServlet {
    private ShopCartService shopCartService = new ShopCartServiceImpl();
    private OrderService orderService = new OrderServiceImpl();
    private UserService userService = new UserServiceImpl();
    private Gson gson = new Gson();
    void addOrder(HttpServletRequest Request , HttpServletResponse Response){
        String userId = Request.getParameter("Userid");
        String money = Request.getParameter("Money");
        System.out.println("money"+money);
        Double mon= Double.valueOf(money);

        userService.UpdataMoney(userId,mon);
        List<ShopCartOV> shopCartList = shopCartService.getShopCartList(userId);

        orderService.addOrder(shopCartList);

        shopCartService.DeleteAll(userId);
    }
}
