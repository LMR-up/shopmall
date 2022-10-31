package com.dfrz.service;

import com.dfrz.homepage.VO.GoodsOV;

import java.util.List;

public interface GoodService {
    List<GoodsOV> getGoodsList(int GoodTypeID);
}
