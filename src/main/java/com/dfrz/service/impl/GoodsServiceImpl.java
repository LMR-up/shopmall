package com.dfrz.service.impl;

import com.dfrz.bean.Goods;
import com.dfrz.dao.GoodsDao;
import com.dfrz.dao.impl.GoodsDaoImpl;
import com.dfrz.service.GoodsService;
import com.dfrz.vo.GoodsVo;

import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    private GoodsDao goodsDao=new GoodsDaoImpl();

    @Override
    public List<Goods>queryGoods(GoodsVo goodsVo) {
        return goodsDao.queryGoods(goodsVo);
    }

    @Override
    public int actionStatue(String gid) {
        return goodsDao.actionStatue(gid);
    }

    @Override
    public int stopStatue(String gid) {
        return goodsDao.stopstatue(gid);
    }

    @Override
    public Goods findGoodById(String gid) {
        return goodsDao.findGoodById(gid);
    }

    @Override
    public int Update(Goods goods) {
        return goodsDao.Update(goods);
    }


    @Override
    public int insertGood(Goods goods) {
        return goodsDao.insertGood(goods);
    }

    @Override
    public int deleteall(String[] gidlist) {
        return goodsDao.deleteall(gidlist);
    }

    @Override
    public Goods findGoodByGname(String goodname) {
        return goodsDao.findGoodByGname(goodname);
    }
}
