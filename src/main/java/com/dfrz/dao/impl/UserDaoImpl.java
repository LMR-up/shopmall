package com.dfrz.dao.impl;

import com.dfrz.bean.User;
import com.dfrz.dao.UserDao;
import com.dfrz.util.DruidUtil;
import com.dfrz.util.JdbcTemplate;
import com.dfrz.util.StringUtils;
import com.dfrz.vo.UserVo;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl extends JdbcTemplate<User> implements UserDao {
    @Override
    public void Pey(String UserID, double Money) {
        String sql = "UPDATE `user` SET `user`.account =? WHERE `user`.uid = ?";
        dml(sql,Money,UserID);
    }
    @Override
    public User findUserByUsername(String username) {
        String sql = "select uid,uname,umail from user where uname = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setUid(resultSet.getString("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setUmail(resultSet.getString("umail"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return user;
    }

    @Override
    public User findUserByNameAndPwd(String name, String password) {
        String sql = "select u.uid ,u.uname,u.password,u.nickname,u.hpic,u.createtime,u.umail,u.phone,u.statue,u.menber,u.score,account,ut.utype " +
                "from user u,user_type ut where u.uid=ut.uid and uname= ? and password= ?;";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setUid(resultSet.getString("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setPassword(resultSet.getString("password"));
                user.setCreatetime(resultSet.getTimestamp("createtime"));
                user.setNickname(resultSet.getString("nickname"));
                user.setHpic(resultSet.getString("hpic"));
                user.setUmail(resultSet.getString("umail"));
                user.setPhone(resultSet.getString("phone"));
                user.setStatue(resultSet.getInt("statue"));
                user.setMenber(resultSet.getInt("menber"));
                user.setUtype(resultSet.getInt("utype"));
                user.setAccount(resultSet.getDouble("account"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return user;
    }

    public int insertUser(User user) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        int resultnum = 0;
        String sql = "insert into user(uid,uname,password,hpic,createtime,umail,phone,statue,menber,score,account) values(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUid());
            ps.setString(2, user.getUname());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getHpic());
            ps.setTimestamp(5, new Timestamp(user.getCreatetime().getTime()));
            ps.setString(6, user.getUmail());
            ps.setString(7, user.getPhone());
            ps.setInt(8, user.getStatue());
            ps.setInt(9, user.getMenber());
            ps.setInt(10, user.getScore());
            ps.setDouble(11, user.getAccount());
            resultnum = ps.executeUpdate();

            String sql2 = "insert into user_type(id,uid,utype) values (null,?,?)";
            PreparedStatement ps2 = conn.prepareStatement(sql2);
            ps2.setString(1, user.getUid());
            ps2.setInt(2, user.getUtype());
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
    public User findUserBynameAemail(String username, String email) {
        String sql = "select u.uid ,u.uname,u.password,u.nickname,u.hpic,u.createtime,u.umail,u.phone,u.statue,u.menber,u.score,account,ut.utype " +
                "from user u,user_type ut where u.uid=ut.uid and uname= ? and umail= ?;";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setUid(resultSet.getString("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setPassword(resultSet.getString("password"));
                user.setCreatetime(resultSet.getTimestamp("createtime"));
                user.setNickname(resultSet.getString("nickname"));
                user.setHpic(resultSet.getString("hpic"));
                user.setUmail(resultSet.getString("umail"));
                user.setPhone(resultSet.getString("phone"));
                user.setStatue(resultSet.getInt("statue"));
                user.setMenber(resultSet.getInt("menber"));
                user.setUtype(resultSet.getInt("utype"));
                user.setAccount(resultSet.getDouble("account"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return user;
    }

    @Override
    public int changPwd(User user) {
        String sql = "update user set password = ? where uname= ?";
        return dml(sql, user.getPassword(), user.getUname());
    }

    @Override
    public User findUserByemail(String mail) {
        String sql = "select u.uid ,u.uname,u.password,u.nickname,u.hpic,u.createtime,u.umail,u.phone,u.statue,u.menber,u.score,u.account,ut.utype " +
                "from user u,user_type ut where u.uid=ut.uid and umail= ? ;";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, mail);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setUid(resultSet.getString("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setPassword(resultSet.getString("password"));
                user.setCreatetime(resultSet.getTimestamp("createtime"));
                user.setNickname(resultSet.getString("nickname"));
                user.setHpic(resultSet.getString("hpic"));
                user.setUmail(resultSet.getString("umail"));
                user.setPhone(resultSet.getString("phone"));
                user.setStatue(resultSet.getInt("statue"));
                user.setMenber(resultSet.getInt("menber"));
                user.setUtype(resultSet.getInt("utype"));
                user.setAccount(resultSet.getDouble("account"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return user;
    }

    @Override
    public User findbyid(String uid) {
        String sql = "select u.uid ,u.uname,u.password,u.nickname,u.hpic,u.createtime,u.umail,u.phone,u.statue,u.menber,u.score,u.account,ut.utype " +
                "from user u,user_type ut where u.uid=ut.uid and u.uid= ? ;";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, uid);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                user = new User();
                user.setUid(resultSet.getString("uid"));
                user.setUname(resultSet.getString("uname"));
                user.setPassword(resultSet.getString("password"));
                user.setCreatetime(resultSet.getTimestamp("createtime"));
                user.setNickname(resultSet.getString("nickname"));
                user.setHpic(resultSet.getString("hpic"));
                user.setUmail(resultSet.getString("umail"));
                user.setPhone(resultSet.getString("phone"));
                user.setStatue(resultSet.getInt("statue"));
                user.setMenber(resultSet.getInt("menber"));
                user.setUtype(resultSet.getInt("utype"));
                user.setAccount(resultSet.getDouble("account"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return user;
    }


    @Override
    public int getPageCount(UserVo userVo) {
        int countnum=0;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        try {
            conn = DruidUtil.getconnection();

            StringBuilder sql = new StringBuilder();
            sql.append(" select  count(*) as count from user u,user_type ut where u.uid=ut.uid and utype=2 and 1=1");

            //查询框判断语句
            /*根据传入的uservo参数值，拼接动态sql*/
            if (userVo != null && StringUtils.isNotBlank(userVo.getUname())) {
                /*此处发生错误，应为拼接的时候，关键字前面没有空格，导致关键字错误，sql语句无法解析*/
                sql.append(" and uname like '%" + userVo.getUname() + "%'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getStarttime())) {
                sql.append(" and u.createtime >= '" + userVo.getStarttime() + "'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getEndtime())) {
                sql.append(" and u.createtime <= '" + userVo.getEndtime() + "'");
            }

            ps = conn.prepareStatement(sql.toString());
            System.out.println(sql);


            rs = ps.executeQuery();


            while (rs.next()) {
                countnum=rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        } finally {
            DruidUtil.closeAll(rs, ps, conn);
        }
        return countnum;
    }

    @Override
    public int Update(User user) {
        String sql = "update user set uname=?,password=?,phone=?,umail=? where uid =?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUname());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getUmail());
            ps.setString(5, user.getUid());
            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(resultSet, ps, conn);
        }
        return count;
    }

    @Override
    public int updatestatue(String uid) {
        String sql = "update user set statue= ? where uid =?";
        Connection conn = null;
        PreparedStatement ps = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();

            ps = conn.prepareStatement(sql);
            ps.setInt(1,0 );
            ps.setString(2, uid);

            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }

    @Override
    public int actionStatue(String uid) {
        String sql = "update user set statue= ? where uid =?";
        Connection conn = null;
        PreparedStatement ps = null;
        int count = 0;
        try {
            conn = DruidUtil.getconnection();

            ps = conn.prepareStatement(sql);
            ps.setInt(1,1 );
            ps.setString(2, uid);

            count = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }


    @Override
    public List<User> page(UserVo userVo) {
        List<User> list = new ArrayList<>();
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        try {
            conn = DruidUtil.getconnection();

            StringBuilder sql = new StringBuilder();
            sql.append(" select u.uid,u.uname,u.password,u.createtime,u.phone,u.umail,u.statue,ut.utype\n" +
                    "  from user u,user_type ut where u.uid=ut.uid and utype=2 and 1=1");

            //查询框判断语句
            /*根据传入的uservo参数值，拼接动态sql*/
            if (userVo != null && StringUtils.isNotBlank(userVo.getUname())) {
                /*此处发生错误，应为拼接的时候，关键字前面没有空格，导致关键字错误，sql语句无法解析*/
                sql.append(" and uname like '%" + userVo.getUname() + "%'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getStarttime())) {
                sql.append(" and u.createtime >= '" + userVo.getStarttime() + "'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getEndtime())) {
                sql.append(" and u.createtime <= '" + userVo.getEndtime() + "'");
            }

            ps = conn.prepareStatement(sql.toString());
            System.out.println(sql);

            rs = ps.executeQuery();


            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getString("uid"));
                user.setUname(rs.getString("uname"));
                user.setPassword(rs.getString("password"));
                user.setCreatetime(rs.getTimestamp("createtime"));
                user.setPhone(rs.getString("phone"));
                user.setUmail(rs.getString("umail"));
                user.setStatue(rs.getInt("statue"));
                list.add(user);
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
    public List<User> page1(Integer pageindex, Integer pagesize, UserVo userVo) {
        List<User> list = new ArrayList<>();
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        try {
            conn = DruidUtil.getconnection();

            StringBuilder sql = new StringBuilder();
            sql.append(" select u.uid,u.uname,u.password,u.createtime,u.phone,u.umail,u.statue,ut.utype\n" +
                    "  from user u,user_type ut where u.uid=ut.uid and utype=2 and 1=1");

            //查询框判断语句
            /*根据传入的uservo参数值，拼接动态sql*/
            if (userVo != null && StringUtils.isNotBlank(userVo.getUname())) {
                /*此处发生错误，应为拼接的时候，关键字前面没有空格，导致关键字错误，sql语句无法解析*/
                sql.append(" and uname like '%" + userVo.getUname() + "%'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getStarttime())) {
                sql.append(" and u.createtime >= '" + userVo.getStarttime() + "'");
            }

            if (userVo != null && StringUtils.isNotBlank(userVo.getEndtime())) {
                sql.append(" and u.createtime <= '" + userVo.getEndtime() + "'");
            }

            sql.append(" limit ?,? ");





            ps = conn.prepareStatement(sql.toString());

            //limit (current - 1) * pageSize,pageSize
            ps.setInt(1, (pageindex - 1) * pagesize);
            ps.setInt(2, pagesize);
            System.out.println(sql);

            rs = ps.executeQuery();


            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getString("uid"));
                user.setUname(rs.getString("uname"));
                user.setPassword(rs.getString("password"));
                user.setCreatetime(rs.getTimestamp("createtime"));
                user.setPhone(rs.getString("phone"));
                user.setUmail(rs.getString("umail"));
                user.setStatue(rs.getInt("statue"));
                list.add(user);
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
    public int deleteall(String[] useridlist) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection conn = null;
        int dlenum=0;
        StringBuilder sql=new StringBuilder();
        sql.append("delete user,user_type from user left JOIN user_type ON user.uid=user_type.uid where user.uid in (");

        for(int i=0;i<useridlist.length;i++){

            if(i<useridlist.length-1){
                String s = useridlist[i];
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
            for(int i=0;i<useridlist.length;i++){
                ps.setString(i+1,useridlist[i]);
            }
            dlenum=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dlenum;

    }

    @Override
    public User selectByUid(String uid) {
        return null;
    }

    public static void main(String[] args) {

    }
}

