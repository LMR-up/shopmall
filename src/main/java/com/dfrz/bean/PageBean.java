package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter@Setter@ToString
public class PageBean<T> {
    private int totalCount;  //总的记录数
    private int totalPage;   //总的页码
    private List<T> list;    //每页的数据
    private int currentPage; //当前页
    private int rows;        //每页显示的条数


}


