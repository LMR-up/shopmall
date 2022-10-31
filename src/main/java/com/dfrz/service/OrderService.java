package com.dfrz.service;

import com.dfrz.homepage.VO.ShopCartOV;

import java.util.List;

public interface OrderService {
    void addOrder(List<ShopCartOV> shopCartList);
}
