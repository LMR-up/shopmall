package com.dfrz.homepage.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*shopcart*/
@Setter@Getter@ToString
public class ShopCart {
    private String id;//购物车id
    private String gid;//商品id
    private int gnum;//商品数量
    private String uid;//useid
}
