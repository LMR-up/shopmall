package com.dfrz.dao;

import com.dfrz.bean.User;
import com.dfrz.vo.UserVo;

import java.util.List;

public interface UserDao {
    void Pey(String UserID,double Money);

    User findUserByUsername(String username);

    User findUserByNameAndPwd(String name,String password);

    User findUserByemail(String mail);

    int insertUser(User user);

    User findUserBynameAemail(String username, String email);

    int changPwd(User user);

    List<User> page1(Integer pageindex, Integer pagesize, UserVo userVo);

    int getPageCount(UserVo userVo);

    List<User> page(UserVo userVo);

    User findbyid(String uid);

    int Update(User user);

    int updatestatue(String uid);
    int actionStatue(String uid);

    int deleteall(String[] useridlist);


    User selectByUid(String uid);
}
