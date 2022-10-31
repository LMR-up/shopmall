package com.dfrz.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DruidUtil {
    public static void main(String[] args) {
/*测试*/
        int count = 0;
        for(int i=0; i<20; i++) {
            Connection connection = getconnection();
            System.out.println(connection.hashCode());

            if(count % 3 == 0) {
                try {
                    //调用close()
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            count++;
        }
    }
    //数据库连接对象
    private static DataSource dataSource;

    static {
        InputStream in = DruidUtil.class.getClassLoader().getResourceAsStream("druid.properties");
        System.out.println(in);
        Properties properties=new Properties();
        try {
            properties.load(in);
            //获取数据库连接池对象
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static Connection getconnection(){
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void closeAll(ResultSet rs, PreparedStatement ps, Connection conn)  {
        if(rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if(ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if(conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
