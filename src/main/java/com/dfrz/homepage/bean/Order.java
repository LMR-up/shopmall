package com.dfrz.homepage.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

/*表order*/
@Setter@Getter@ToString
public class Order {
    private String oid;//订单id UUID
    private String userid;//用户id
    private LocalDateTime createtime;//订单创建时间
    private int statue;//订单状态1完成 0为完成
    private double totalprice;//总金额
}
