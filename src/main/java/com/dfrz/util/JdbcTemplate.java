package com.dfrz.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JdbcTemplate<T> {
    public int dml(String sql, Object... args) {
        int count = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < args.length; i++) {
                ps.setObject(i + 1, args[i]);
            }
            // ps.execute();
            count = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }

    public T queryById(String sql, Class c, int id) {
        return query(sql, c, id).get(0);
    }

    public T QueryById(String sql, Class c, String id) {
        return query(sql, c, id).get(0);
    }

    public T queryByName(String sql, Class c, String name) {
        return query(sql, c, name).get(0);
    }


    public List<T> query(String sql, Class c, Object... args) {
        List<T> list = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);

            if (args != null) {
                for (int i = 0; i < args.length; i++) {
                    ps.setObject(i + 1, args[i]);
                }
            }

            rs = ps.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                //获取这个类型的空参构造方法的反射类型的对象
                Constructor<T> constructor = c.getDeclaredConstructor();
                //创建实例。什么类型？不知道，运行的时候才知道 （泛型的写法）

                //运行的时候，传递进来什么类型，就创建该类型的对象（以调用空参构造方法的方式）
                T t = constructor.newInstance();  // 相当于 t = new T();
                //获取实体类中所有属性/字段的Field对象
                Field[] fields = c.getDeclaredFields();

                //通过循环的方式，完成对t对象中所有属性值的注入。
                // Dog dog = new Dog();
                // dog.name = "xx";
                // dog.age = 20;
                //...
                for (int i = 0; i < fields.length; i++) {

                    fields[i].setAccessible(true);
                    //获取字段的名称
                    String fieldName = fields[i].getName(); //name

                    // 相当于 user.setObject(rs.getObject(i+1));
                    //fields[i].set(t, rs.getObject(i+1));  //t.setField(rs.get())

                    //通过列名（字段的名称）从结果集光标中，得到数据
                    //属性的名称必须与数据库中的列名一样，如何列表一样匹配不了！
                    Object obj = rs.getObject(fieldName); //name找不到，因为t_user:使用username

                    //把获取的数据，注入到t对象的fields[i]的属性。
                    //t.name = obj;
                    //t.age = obj;
                    //t.gender = obj;
                    fields[i].set(t, obj);
                }
                list.add(t);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return list;
    }

    public int countSize(String sql, Class c) {
        int count=0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DruidUtil.getconnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count=rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.closeAll(null, ps, conn);
        }
        return count;
    }

}
