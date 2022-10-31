package com.dfrz.controller;

import com.dfrz.homepage.VO.GoodsOV;
import com.dfrz.service.GoodService;
import com.dfrz.service.impl.GoodServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.google.gson.Gson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GoodServlet extends BaseServlet {
    private GoodService goodsService = new GoodServiceImpl() ;

        private Gson gson = new Gson();

        void getGoodsOVList(HttpServletRequest Request, HttpServletResponse Response) throws IOException {
            String typeID = Request.getParameter("typeID");
            int i = Integer.parseInt(typeID);
            List<GoodsOV> goodsList = goodsService.getGoodsList(i);
            String s = gson.toJson(goodsList);
            Response.getWriter().write(s);
        }
    }


