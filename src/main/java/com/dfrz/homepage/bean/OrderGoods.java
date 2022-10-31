package com.dfrz.homepage.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*order_goods*/
@Setter@Getter@ToString
public class OrderGoods {
    private int id;//
    private String gid;//订单ID
    private int gnum;//商品数量
    private String oid;//商品id
}
