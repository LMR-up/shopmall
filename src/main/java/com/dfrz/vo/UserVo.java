package com.dfrz.vo;

import com.dfrz.bean.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
@Setter@Getter@ToString
public class UserVo extends User {
    private String starttime;
    private String endtime;
}
