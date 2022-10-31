package com.dfrz.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
import java.util.List;
/*表 user*/
@Setter@Getter@ToString
public class User {
    private String uid;//生成UUID再插入
    private String uname;//用户名
    private String password;//密码MD5加密
    private Date createtime;//注册时间
    private String nickname;//昵称
    private String hpic;//头像图片地址
    private String umail;//邮箱
    private String phone;//手机号
    private int statue;//用户状态1为可用，0为注销
    private int menber;//1为会员,0非会员
    private int score;//积分，
    private int utype;//类别1超管，2管理，3普通用户
    private List<UserAddress> addressList;//多个收获地址的信息
    private double account;//账户金额
}
