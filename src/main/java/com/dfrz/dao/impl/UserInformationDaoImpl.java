package com.dfrz.dao.impl;

import com.dfrz.bean.OrderInformation;
import com.dfrz.bean.UserAddress;
import com.dfrz.bean.UserInformation;
import com.dfrz.dao.UserInformationDao;
import com.dfrz.util.DruidUtil;
import com.dfrz.util.JdbcTemplate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserInformationDaoImpl extends JdbcTemplate implements UserInformationDao {
    @Override
    public List<UserInformation> queryAllByID(String Uuid) {
        //查询用户信息
        String sql = "SELECT `user`.uid,`user`.uname,`user`.`password`,`user`.createtime,`user`.nickname,`user`.hpic,`user`.umail,`user`.phone,`user`.menber,`user`.score,user_type.utype,`user`.account FROM `user` ,user_type WHERE `user`.uid=? AND user_type.uid=`user`.uid";
        //放回用户信息表
        return query(sql, UserInformation.class, Uuid);
    }

    @Override
    public void updateUserInformationByUid(UserInformation userInformation) {
        //更新用户信息ByUid（）
        String sql = "update user set nickname = ?,password = ?,umail = ?,phone = ? where uid=?";
        dml(sql, userInformation.getNickname(), userInformation.getPassword(), userInformation.getUmail(), userInformation.getPhone(), userInformation.getUid());
    }

    @Override
    public void updateUserAccountByUid(String Uuid, int menber, Double account) {

        String sql = "update user set menber = ?,account = ? where uid=?";
        dml(sql, menber, account, Uuid);
    }

    @Override
    public void updateUserMenberByUid(UserInformation userInformation) {

    }

    @Override
    public void updateUserhpicByUid(String src, String Uuid) {

        System.out.println(src);
        String sql = "update user set hpic = ? where uid=?";
        dml(sql, src, Uuid);
    }

    @Override
    public List<UserAddress> queryAddressById(String Uuid) {

        String sql = "select id AS \"addressid\",address,addressee,Telephone,status from u_address where uid=? order  by  status desc";

        return query(sql, UserAddress.class, Uuid);
    }

    @Override
    public void deleteById(int id) {
        System.out.println("deleteById方法被调用");
        System.out.println(id);
        String sql = "delete from u_address where id = ?";
        dml(sql, id);
    }


    @Override
    public void setStatueAddressById(int id) {
        String sql = " SELECT uid FROM u_address WHERE id=?";
        Connection conn = null;
        String uid = "";
        conn = DruidUtil.getconnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                uid = rs.getString("uid");
            }
            System.out.println(uid);
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String sql2 = "UPDATE u_address SET `status`=0 WHERE uid=? ";
        dml(sql2, uid);
        String sql3 = "UPDATE u_address SET `status`=1 WHERE id=?";
        dml(sql3, id);

    }

    @Override
    public int ifAlreadyHaveStatus(int id) {
        String sql = "SELECT COUNT(status) FROM u_address WHERE uid=(SELECT uid FROM u_address WHERE id=4) AND status =1";
        return dml(sql, id);
    }

    @Override
    public void updateAlreadyHaveStatus(int id) {
        String sql = "select SELECT uid FROM u_address WHERE id=?";
        int uid = dml(sql, id);
        String sql2 = "UPDATE u_address SET `status`=0 WHERE uid=? ";
        dml(sql2, uid);
        String sql3 = "UPDATE u_address SET `status`=0 WHERE id=?";
        dml(sql3, id);
    }

    @Override
    public void updateByID(int id) {

    }

    @Override
    public List<UserAddress> queryAddressByAddressId(int id) {
        String sql = "select id AS \"addressid\",address,addressee,Telephone,status from u_address where id=? ";

        return query(sql, UserAddress.class, id);
    }

    @Override
    public void updateAddressById(int id, String addressee, String address, String phone) {
        String sql = "UPDATE u_address set addressee=?,address=?,Telephone=? WHERE id=?";
        dml(sql, addressee, address, phone, id);
    }

    @Override
    public void insertAddressById(String uid, String addressee, String address, String phone) {
        String sql = "insert into u_address (id,addressee,address,Telephone,status,uid)values(null,?,?,?,0,?)";
        dml(sql, addressee, address, phone, uid);
    }

    @Override
    public List<OrderInformation> queryOrderInformation(String uid) {
        String sql = "select id AS \"oid\",uid,createtime,statue,totalprice from `t_order` where uid=?";
        return query(sql, OrderInformation.class, uid);
    }

    @Override
    public List<Map<String, Object>> userOrderInformationList(String oid) {
        String sql = "SELECT order_goods.oid,goods.gname,order_goods.gnum,goods.price FROM order_goods ,goods WHERE order_goods.gid=goods.id AND order_goods.oid=?";
        Connection conn = null;
        ArrayList<Map<String, Object>> arrayList = new ArrayList<Map<String, Object>>();
        conn = DruidUtil.getconnection();

        try {
            System.out.println("1");
            PreparedStatement ps = conn.prepareStatement(sql);
            System.out.println("2");
            ps.setString(1, oid);
            System.out.println("3");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String oid1 = rs.getString("order_goods.oid");
                String gname = rs.getString("gname");
                int gnum = rs.getInt("gnum");
                Double price = rs.getDouble("price");

                Map<String, Object> map = new HashMap<String, Object>();
                map.put("oid", oid);
                map.put("gname", gname);
                map.put("gnum", gnum);
                map.put("price", price);
                arrayList.add(map);

            }
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return arrayList;
    }

    @Override
    public String seachHpicByUid(String uid) {
        String sql = "select hpic from user where uid=?";
        Connection conn = null;
        String hpic = "";
        conn = DruidUtil.getconnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                hpic = rs.getString("hpic");
            }
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return hpic;
    }

    @Override
    public int findTotalCount(String uid) {
        String sql = "select count(*) from `t_order` where uid=?";

        Connection conn = null;
        int sum=0;
        conn = DruidUtil.getconnection();

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, uid);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("count(*)");
            }
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return sum;
    }

    @Override
    public int findTotalCount() {
        String sql = "select count(*) from `t_order`";

        Connection conn = null;
        int sum=0;
        conn = DruidUtil.getconnection();

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);


            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("count(*)");
            }
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return sum;
    }



    @Override
    public List<OrderInformation> findByPage(int start, int rows, String uid) {
        String sql = "select id AS \"oid\",uid,createtime,statue,totalprice from `t_order` where uid=? limit ?,?";
        return query(sql, OrderInformation.class, uid,start,rows);

    }

    @Override
    public List<OrderInformation> findByPage(int start, int rows) {
        String sql = "select id AS \"oid\",uid,createtime,statue,totalprice from `t_order` limit ?,?";
        return query(sql, OrderInformation.class,start,rows);
    }

    @Override
    public int findRecordByUid(String uid) {
        String sql="select currentpage from user_record where uid=?";
        Connection conn = null;
        int sum=0;
        conn = DruidUtil.getconnection();

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, uid);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sum = rs.getInt("currentpage");
            }
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            return 0;

        }

        return sum;
    }

    @Override
    public void insertPageRecord(String uid,int currentPage) {
        String sql="insert into user_record (uid,currentpage)values(?,?)";
        dml(sql,uid,currentPage);
    }

    @Override
    public void updatePage(int currentPage, String uid) {
        String sql="update user_record set currentpage=? where uid=?";
        dml(sql,currentPage,uid);
    }
}