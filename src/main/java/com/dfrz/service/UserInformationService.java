package com.dfrz.service;

import com.dfrz.bean.OrderInformation;
import com.dfrz.bean.PageBean;
import com.dfrz.bean.UserAddress;
import com.dfrz.bean.UserInformation;

import java.util.List;
import java.util.Map;

public interface UserInformationService {
    //根据用户ID查询用户信息
    List<UserInformation> queryAllByID(String Uuid);
    void updateUserInformationByUid(UserInformation userInformation);
    Double updateUserAccountByUid(String Uuid,Double accountAdd,Double accountOld);
    void updateUserhpicByUid(String src,String Uuid);
    List<UserAddress> queryAddressById(String uid);
    void deleteById(int id);
    void setStatueAddressById(int id);
    void updateAddressById(int id,String addressee,String address,String phone);
    void insertAddressById(String uid,String addressee,String address,String phone);
    List<UserAddress>queryAddressByAddressId(int id);
    List<OrderInformation>queryOrderInformation(String uid);
    List<Map<String,Object>> userOrderInformationList(String uid);
    String seachHpicByUid(String uid);
    PageBean<OrderInformation> findUserByPage(String _currentPage, String _rows,String uid,int utype);
    void updatePage(String message,String currentpage,String totalPage,String uid);
}
