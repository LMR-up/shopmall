package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;

/*表 u_address */
@Setter@Getter
public class UserAddress {
    private int addressid;//地址id，自增
    private String address;//收货地址
    private String addressee;//收货人
    private String telephone;//收货人号码
    private int status;//默认地址为1，其他为0

}
