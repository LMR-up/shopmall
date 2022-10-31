package com.dfrz.bean;

import lombok.*;

import java.util.Date;

@Getter@Setter@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderInformation {
    private String oid;//订单id UUID
    private String uid;//用户id
    private Date createtime;//订单创建时间
    private int statue;//订单状态1完成 0为完成
    private double totalprice;//总金额
}
