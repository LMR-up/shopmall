package com.dfrz.bean;

import lombok.*;

@Getter@Setter@AllArgsConstructor@NoArgsConstructor@ToString
public class UserInformation {
    private String uid;//生成UUID再插入
    private String uname;//用户名
    private String password;//密码MD5加密
    private String nickname;//昵称
    private String hpic;//头像图片地址
    private String umail;//邮箱
    private String phone;//手机号
    private int menber;//1为会员,0非会员
    private int score;//积分，
    private int utype;//类别1超管，2管理，3普通用户
    private double account;//钱包

}
