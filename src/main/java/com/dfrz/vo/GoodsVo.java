package com.dfrz.vo;

import com.dfrz.bean.Goods;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class GoodsVo extends Goods {
    private String starttime;
    private String endtime;
}
