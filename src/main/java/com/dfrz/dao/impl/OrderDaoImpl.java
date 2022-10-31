package com.dfrz.dao.impl;

import com.dfrz.dao.OrderDao;
import com.dfrz.homepage.bean.Order;
import com.dfrz.util.DruidUtil;
import com.dfrz.util.JdbcTemplate;

import java.sql.*;
import java.util.Date;

public class OrderDaoImpl extends JdbcTemplate<Order> implements OrderDao {

    @Override
    public void addOrder(String OrderId, String Userid, Date dataTime, int statue, double totalprice) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        int resultnum = 0;
        String sql = "INSERT INTO t_order (id,uid,createtime,statue,totalprice) VALUES(?,?,?,?,?)";
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, OrderId);
            ps.setString(2, Userid);
            ps.setTimestamp(3, new Timestamp(dataTime.getTime()));
            ps.setInt(4, statue);
            ps.setDouble(5, totalprice);
            resultnum = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
    }

    @Override
    public void addOrderGoods(String OrderID, int goodsNum, String Goodsid) {
        String sql = "INSERT INTO order_goods SET oid = ? , gnum = ? ,gid = ?";
        dml(sql,OrderID,goodsNum,Goodsid);
    }
}
