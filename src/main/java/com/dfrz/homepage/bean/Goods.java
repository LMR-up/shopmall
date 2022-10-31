package com.dfrz.homepage.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.Date;

@Setter@Getter@ToString
public class Goods {
    private String id;//商品id ,UUID生成
    private String gname;//商品名
    private double price;//单价
    private int num;//商品数量
    private Date createtime;//生产日期
    private String detail;//商品介绍
    private String gpic;//商品图片
    private int status;//商品状态 1在售，0下架
    private int gtype;//商品类别，1，2，3，4，5.....前端获取数据之后再转化
}
