package com.dfrz.homepage.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Setter@Getter@ToString
public class GoodsOV {
    private String id;//商品id ,UUID生成
    private String gname;//商品名
    private double price;//单价
    private int num;//商品数量
    private Date createtime;//生产日期
    private String detail;//商品介绍
    private String gpic;//商品图片
    private int status;//商品状态 1在售，0下架
    private int gtype;//商品类别，1，2，3，4，5.....前端获取数据之后再转化

    public GoodsOV() {
    }

    public GoodsOV(String id, String gname, double price, int num, Date createtime, String detail, String gpic, int status, int gtype) {
        this.id = id;
        this.gname = gname;
        this.price = price;
        this.num = num;
        this.createtime = createtime;
        this.detail = detail;
        this.gpic = gpic;
        this.status = status;
        this.gtype = gtype;
    }


}
