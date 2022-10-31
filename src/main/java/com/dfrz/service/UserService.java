package com.dfrz.service;

import com.dfrz.bean.User;
import com.dfrz.vo.UserVo;

import java.util.List;

public interface UserService {

    void UpdataMoney(String UserID , double money);


    User findUserByUsername(String username);
    User login(String name,String password);
    User mailLogin(String email);
    int register(User user);
    User loginBynamAndEmail(String username,String email);

    int  changePassword(User user);

    int getcount(UserVo userVo);
    List<User> page1(Integer pageindex, Integer pagesize, UserVo userVo);

    List<User> page(UserVo userVo);

    User findUserById(String uid);

    int Update(User user);

    int stopStatue(String uid);
    int actionStatue(String uid);

    int deleteall(String[] useridlist);

    User selectByUid(String uid);
}
