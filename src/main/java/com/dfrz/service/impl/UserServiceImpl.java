package com.dfrz.service.impl;

import com.dfrz.bean.User;
import com.dfrz.dao.UserDao;
import com.dfrz.dao.impl.UserDaoImpl;
import com.dfrz.service.UserService;
import com.dfrz.vo.UserVo;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserDao userDao=new UserDaoImpl();

    @Override
    public void UpdataMoney(String UserID, double money) {
        userDao.Pey(UserID,money);
    }

    @Override
    public User findUserByUsername(String username) {
        return userDao.findUserByUsername(username);
    }

    @Override
    public User login(String name, String password) {
        return userDao.findUserByNameAndPwd(name,password);
    }

    @Override
    public User mailLogin(String email) {
        return userDao.findUserByemail(email);
    }

    @Override
    public int register(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public User loginBynamAndEmail(String username, String email) {
        return userDao.findUserBynameAemail(username,email);
    }

    @Override
    public int changePassword(User user) {
        return userDao.changPwd(user);
    }

   @Override
    public List<User> page1(Integer pageindex, Integer pagesize, UserVo userVo) {
        return userDao.page1(pageindex,pagesize,userVo);
    }

    @Override
    public int getcount(UserVo userVo) {
        return userDao.getPageCount(userVo);
    }

    @Override
    public List<User> page(UserVo userVo) {
        return userDao.page(userVo);
    }

    @Override
    public User findUserById(String uid) {
        return userDao.findbyid(uid);
    }

    @Override
    public int Update(User user) {
        return userDao.Update(user);
    }

    @Override
    public int stopStatue(String uid) {
       return userDao.updatestatue(uid);
    }

    @Override
    public int actionStatue(String uid) {
        return userDao.actionStatue(uid);
    }

    @Override
    public int deleteall(String[] useridlist) {
        return userDao.deleteall(useridlist);
    }

    @Override
    public User selectByUid(String uid) {
        return userDao.selectByUid(uid);
    }
}
