package com.dfrz.util;

import java.util.UUID;

/**
 * 字符串工具包
 */
public class StringUtils {

    /**
     * 获得一个UUID值,不带中杠线"-"
     * @return
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replace("-","");
    }

    /**
     * 判断是否为空
     * @param str
     * @return
     */
    public static boolean isBlank(String str){
        return  "".equals(str) || str == null;
    }

    public static boolean isNotBlank(String str){
        return  !isBlank(str);
    }

}
