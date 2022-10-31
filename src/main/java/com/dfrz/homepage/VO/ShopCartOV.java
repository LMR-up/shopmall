package com.dfrz.homepage.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*shopcart*/
@Setter@Getter@ToString
public class ShopCartOV {
    private String shopid;//购物车id
    private String goods;//商品id
    private String gname;//商品名
    private String gpic;//商品图片
    private double price;//单价
    private int gnum;//商品数量
    private String user;//useid

    public ShopCartOV() {
    }

    public ShopCartOV(String shopid, String goods, String gname, String gpic, double price, int gnum, String user) {
        this.shopid = shopid;
        this.goods = goods;
        this.gname = gname;
        this.gpic = gpic;
        this.price = price;
        this.gnum = gnum;
        this.user = user;
    }
}
