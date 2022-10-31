package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

/*表order*/
@Setter@Getter
public class Order {
    private String oid;//订单id UUID
    private User user;//用户id
    private Date createtime;//订单创建时间
    private int statue;//订单状态1完成 0为完成
    private double totalprice;//总金额
    private List<OrderGoods> orderGoods;//某个个订单下的多个商品
}
