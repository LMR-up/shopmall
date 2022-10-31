package com.dfrz.service.impl;

import com.dfrz.bean.OrderInformation;
import com.dfrz.bean.PageBean;
import com.dfrz.bean.UserAddress;
import com.dfrz.bean.UserInformation;
import com.dfrz.dao.UserInformationDao;
import com.dfrz.dao.impl.UserInformationDaoImpl;
import com.dfrz.service.UserInformationService;

import java.util.List;
import java.util.Map;

import static com.dfrz.util.MD5util.md5;

public class UserInformationServiceImpl implements UserInformationService {
    UserInformationDao userInformationDao=new UserInformationDaoImpl();
    @Override
    public List<UserInformation> queryAllByID(String Uuid) {
        return userInformationDao.queryAllByID(Uuid);
    }

    @Override
    public void updateUserInformationByUid(UserInformation userInformation) {
        userInformation.setPassword(md5(userInformation.getPassword()));
        userInformationDao.updateUserInformationByUid(userInformation);
    }

    @Override
    public Double updateUserAccountByUid(String Uuid,Double accountAdd,Double accountOld) {
        int menber=0;
        if (accountAdd>=500){
            menber=1;
        }
        Double account=accountAdd+accountOld;
        userInformationDao.updateUserAccountByUid(Uuid,menber,account);

        return account;
    }

    @Override
    public void updateUserhpicByUid(String src, String Uuid) {
        userInformationDao.updateUserhpicByUid(src, Uuid);
    }

    @Override
    public List<UserAddress> queryAddressById(String uid) {
        return userInformationDao.queryAddressById(uid);
    }

    @Override
    public void deleteById(int id) {
        userInformationDao.deleteById(id);
    }

    @Override
    public void setStatueAddressById(int id) {
        /*if (userInformationDao.ifAlreadyHaveStatus(id)>=1) {
            userInformationDao.updateAlreadyHaveStatus(id);
        }*/

        userInformationDao.setStatueAddressById(id);
    }

    @Override
    public void updateAddressById(int id,String addressee,String address,String phone) {
        userInformationDao.updateAddressById(id,addressee,address,phone);
    }

    @Override
    public void insertAddressById(String uid,String addressee,String address,String phone) {
        userInformationDao.insertAddressById(uid,addressee,address,phone);
    }


    @Override
    public List<UserAddress> queryAddressByAddressId(int id) {
        return userInformationDao.queryAddressByAddressId(id);
    }

    @Override
    public List<OrderInformation> queryOrderInformation(String uid) {
        return userInformationDao.queryOrderInformation(uid);
    }

    @Override
    public List<Map<String,Object>> userOrderInformationList(String uid) {
        return userInformationDao.userOrderInformationList(uid);
    }

    @Override
    public String seachHpicByUid(String uid) {
        return userInformationDao.seachHpicByUid(uid);
    }

    @Override
    public PageBean<OrderInformation> findUserByPage(String _currentPage, String _rows, String uid, int utype) {

        int currentPage = Integer.parseInt(_currentPage); //当前页数
        int rows = Integer.parseInt(_rows);               //每页多少条数据

        /*if (currentPage <= 1){
            currentPage = 1;
        }*/
        //1.创建一个空的PageBean对象
        PageBean<OrderInformation> pb =  new PageBean<OrderInformation>();
        //2.设置参数
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);
        int totalCount =0;
        //3.使用dao查询获取总数据数
        if (utype!=3){
            totalCount=userInformationDao.findTotalCount();
        }else {
            totalCount = userInformationDao.findTotalCount(uid);}
        System.out.println(totalCount);

        pb.setTotalCount(totalCount);

        //记录页数
        int recordPage= userInformationDao.findRecordByUid(uid);
        if (recordPage==0){
            userInformationDao.insertPageRecord(uid,1);
            recordPage=userInformationDao.findRecordByUid(uid);
        }
        pb.setCurrentPage(recordPage);
        currentPage=recordPage;
        //4.调用dao查询每页List集合中的详情
        int start = (currentPage - 1) * rows;
        if (utype!=3){
            List<OrderInformation> list = userInformationDao.findByPage(start, rows);
            pb.setList(list);
        }else {
            List<OrderInformation> list = userInformationDao.findByPage(start, rows, uid);
            pb.setList(list);
        }
        //5.计算出总页码
        int totalPage = totalCount % rows == 0 ? totalCount / rows : totalCount / rows + 1;
        pb.setTotalPage(totalPage);

        return pb;
    }

    @Override
    public void updatePage(String message, String currentpage, String totalPage, String uid) {
        if ("".equals(currentpage)){
            currentpage="1";
        }
        if ("".equals(totalPage)){
            totalPage="1";
        }
        int temp=Integer.parseInt(currentpage);
        int tempTotalPage=Integer.parseInt(totalPage);

        if ("lastPage".equals(message)){
            if (temp>1) {
                userInformationDao.updatePage(temp-1,uid);
            }
            System.out.println("无法往前");
        }
        if ("nextPage".equals(message)){
            if ((temp+1)<=tempTotalPage){
                userInformationDao.updatePage(temp+1,uid);
            }
            System.out.println("无法往后");
        }
        if ("skipPage".equals(message)){
            if (temp>0&&tempTotalPage<tempTotalPage) {
                userInformationDao.updatePage(temp, uid);
            }
            System.out.println("页码错误");
        }
        if ("FirstPage".equals(message)){
            temp=1;
            userInformationDao.updatePage(temp,uid);
        }
        if ("FinalPage".equals(message)){
            userInformationDao.updatePage(tempTotalPage,uid);
        }
    }

}
