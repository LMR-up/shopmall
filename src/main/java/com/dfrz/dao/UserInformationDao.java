package com.dfrz.dao;

import com.dfrz.bean.OrderInformation;
import com.dfrz.bean.UserAddress;
import com.dfrz.bean.UserInformation;

import java.util.List;
import java.util.Map;

public interface UserInformationDao {
    //根据ID查询用户信息返回列表
    List<UserInformation> queryAllByID(String Uuid);
    void updateUserInformationByUid(UserInformation userInformation);
    void updateUserAccountByUid(String Uuid,int menber,Double account);
    void updateUserMenberByUid(UserInformation userInformation);
     void updateUserhpicByUid(String src, String Uuid);
    List<UserAddress> queryAddressById(String Uuid);
    void deleteById(int id);
    void setStatueAddressById(int id);
    int ifAlreadyHaveStatus(int id);
    void updateAlreadyHaveStatus(int id);
    void updateByID(int id);
    List<UserAddress>queryAddressByAddressId(int id);
    void updateAddressById(int id,String addressee,String address,String phone);
    void insertAddressById(String uid,String addressee,String address,String phone);
    List<OrderInformation>queryOrderInformation(String uid);
    List<Map<String,Object>>userOrderInformationList(String uid);
    String seachHpicByUid(String uid);
    int findTotalCount(String uid);
    int findTotalCount();
    List<OrderInformation> findByPage(int start, int rows,String uid);
    List<OrderInformation> findByPage(int start, int rows);
    int findRecordByUid(String uid);
    void insertPageRecord(String uid,int currentPage);
    void updatePage(int currentPage,String uid);

}
