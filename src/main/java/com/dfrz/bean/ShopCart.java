package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;
/*shopcart*/
@Setter@Getter
public class ShopCart {
    private String shopid;//购物车id
    private Goods goods;//商品id
    private int gnum;//商品数量
    private User user;//useid
}
