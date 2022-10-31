package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class Comment {
    private String commid;//评论表id
    private Order order;//订单id
    private String comments;//评论内容


}

