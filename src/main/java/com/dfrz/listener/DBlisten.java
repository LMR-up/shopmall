package com.dfrz.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
/*tomcat启动时初始化加载数据库连接池*/
public class DBlisten implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("DBListen  open......");
        try {
            Class.forName("com.dfrz.util.DruidUtil");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("DBListen  close......");
    }
}
