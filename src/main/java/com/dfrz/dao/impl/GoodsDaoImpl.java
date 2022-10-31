package com.dfrz.dao.impl;

import com.dfrz.bean.Goods;

import com.dfrz.dao.GoodsDao;
import com.dfrz.util.DruidUtil;
import com.dfrz.util.JdbcTemplate;
import com.dfrz.util.StringUtils;
import com.dfrz.vo.GoodsVo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GoodsDaoImpl extends JdbcTemplate<Goods> implements GoodsDao {



    @Override
    public List<Goods> queryGoods(GoodsVo goodsVo) {
        List<Goods> list = new ArrayList<>();
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        try {
            conn = DruidUtil.getconnection();

            StringBuilder sql = new StringBuilder();
            sql.append(" select g.id ,g.gname,g.price,g.createtime,g.detail,g.gpic,g.status,gt.gtype ,g.num from goods  g,good_type gt where g.id=gt.gid  and 1=1");

            //查询框判断语句
            /*根据传入的goodsrvo参数值，拼接动态sql*/
            if (goodsVo != null && goodsVo.getGtype()!=0) {
                /*此处发生错误，应为拼接的时候，关键字前面没有空格，导致关键字错误，sql语句无法解析*/
                sql.append(" and gtype = " + goodsVo.getGtype() + "");
            }
            if (goodsVo != null && StringUtils.isNotBlank(goodsVo.getGname())) {
                /*此处发生错误，应为拼接的时候，关键字前面没有空格，导致关键字错误，sql语句无法解析*/
                sql.append(" and gname like '%" + goodsVo.getGname() + "%'");
            }

            if (goodsVo != null && StringUtils.isNotBlank(goodsVo.getStarttime())) {
                sql.append(" and g.createtime >= '" + goodsVo.getStarttime() + "'");
            }

            if (goodsVo != null && StringUtils.isNotBlank(goodsVo.getEndtime())) {
                sql.append(" and g.createtime <= '" + goodsVo.getEndtime() + "'");
            }

            ps = conn.prepareStatement(sql.toString());
            System.out.println(sql);

            rs = ps.executeQuery();


            while (rs.next()) {
                Goods goods=new Goods();
                goods.setGid(rs.getString(1));
                goods.setGname(rs.getString(2));
                goods.setPrice(rs.getDouble(3));
                goods.setCreatetime(rs.getTimestamp(4));
                goods.setDetail(rs.getString(5));
                goods.setGpic(rs.getString(6));
                goods.setStatu(rs.getInt(7));
                goods.setGtype(rs.getInt(8));
                goods.setNum(rs.getInt(9));
                list.add(goods);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        } finally {
            DruidUtil.closeAll(rs, ps, conn);
        }
        return list;

    }

    @Override
    public int stopstatue(String gid) {
        String sql = "update goods set status= ? where id =?";
        Connection conn = null;
        PreparedStatement ps = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();

            ps = conn.prepareStatement(sql);
            ps.setInt(1,0 );
            ps.setString(2, gid);

            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }

    @Override
    public int actionStatue(String gid) {
        String sql = "update goods set status= ? where id =?";
        Connection conn = null;
        PreparedStatement ps = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();

            ps = conn.prepareStatement(sql);
            ps.setInt(1,1 );
            ps.setString(2, gid);

            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }

    @Override
    public Goods findGoodById(String gid) {
        String sql = "select g.id ,g.gname,g.price,g.num,g.createtime,g.detail,g.gpic,g.status,gt.gtype " +
                "from goods g ,good_type gt where g.id=gt.gid and g.id= ? ;";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        Goods goods = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, gid);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                goods=new Goods();
                goods.setGid(resultSet.getString(1));
                goods.setGname(resultSet.getString(2));
                goods.setPrice(resultSet.getDouble(3));
                goods.setNum(resultSet.getInt(4));
                goods.setCreatetime(resultSet.getTimestamp(5));
                goods.setDetail(resultSet.getString(6));
                goods.setGpic(resultSet.getString(7));
                goods.setStatu(resultSet.getInt(8));
                goods.setGtype(resultSet.getInt(9));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return goods;
    }

    @Override
    public int Update(Goods goods) {
        String sql = "update goods set gname=?,price=?,num=?,detail=?,gpic=? where id =?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, goods.getGname());
            ps.setDouble(2, goods.getPrice());
            ps.setInt(3, goods.getNum());
            ps.setString(4, goods.getDetail());
            ps.setString(5, goods.getGpic());
            ps.setString(6, goods.getGid());
            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return count;
    }

    @Override
    public int insertGood(Goods goods) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        int resultnum = 0;
        String sql = "insert into goods(id,gname,price,num,createtime,detail,gpic,status) values(?,?,?,?,?,?,?,?)";
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, goods.getGid());
            ps.setString(2, goods.getGname());
            ps.setDouble(3, goods.getPrice());
            ps.setInt(4, goods.getNum());
            ps.setTimestamp(5, new Timestamp(goods.getCreatetime().getTime()));
            ps.setString(6, goods.getDetail());
            ps.setString(7, goods.getGpic());
            ps.setInt(8, goods.getStatu());
            resultnum = ps.executeUpdate();

            String sql2 = "insert into good_type(id,gtype,gid) values (null,?,?)";
            PreparedStatement ps2 = conn.prepareStatement(sql2);
            ps2.setInt(1, goods.getGtype());
            ps2.setString(2, goods.getGid());
            int i = ps2.executeUpdate();
            resultnum += i;


        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return resultnum;
    }


    @Override
    public int deleteall(String[] gidlist) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        int dlenum=0;
        StringBuilder sql=new StringBuilder();
        sql.append("delete goods,good_type from goods left JOIN good_type ON goods.id=good_type.gid where goods.id in (");

        for(int i=0;i<gidlist.length;i++){

            if(i<gidlist.length-1){
                String s = gidlist[i];
                sql.append("?,");
            }else {
                sql.append("?");;
            }

        }
        sql.append(")");
        System.out.println(sql);

        try {
            conn=DruidUtil.getconnection();
            ps = conn.prepareStatement(sql.toString());
            for(int i=0;i<gidlist.length;i++){
                ps.setString(i+1,gidlist[i]);
            }
            dlenum=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dlenum;

    }


    @Override
    public Goods findGoodByGname(String goodname) {
        String sql = "select id,gname from goods where gname = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        Goods goods = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, goodname);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                goods=new Goods();
                goods.setGid(resultSet.getString(1));
                goods.setGname(resultSet.getString(2));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return goods;
    }

    public static void main(String[] args) {

    }
}
