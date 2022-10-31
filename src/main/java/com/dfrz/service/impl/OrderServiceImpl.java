package com.dfrz.service.impl;

import com.dfrz.dao.OrderDao;
import com.dfrz.dao.impl.OrderDaoImpl;
import com.dfrz.homepage.VO.ShopCartOV;
import com.dfrz.service.OrderService;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.dfrz.util.StringUtils.uuid;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao = new OrderDaoImpl();
    @Override
    public void addOrder(List<ShopCartOV> shopCartList) {
        String OrderId = uuid();
        Date date = new Date();
        // 将日期转化为字符串

        double money = 0;
        for (ShopCartOV shopCartOV:shopCartList) {
            orderDao.addOrderGoods(OrderId,shopCartOV.getGnum(),shopCartOV.getGoods());
            money+=shopCartOV.getGnum()*shopCartOV.getPrice();
        }
        orderDao.addOrder(OrderId,shopCartList.get(0).getUser(), new Date() ,1,money);
    }
}
