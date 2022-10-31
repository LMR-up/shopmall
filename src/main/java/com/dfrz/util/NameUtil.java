package com.dfrz.util;

import java.util.Date;
import java.util.UUID;

public class NameUtil {


    public static String timeName(String fileName) {
        return getFileName(fileName) + "-" + getTime() + "." + getExtendName(fileName);
    }


    public static String uuidName(String fileName) {
        return getFileName(fileName) + "-" + getUuid() + "." + getExtendName(fileName);
    }

    public static String getFileName(String fileName) {
        String name=null;
        if(fileName.length()!=0){
            int index = fileName.lastIndexOf(".");

             name = fileName.substring(0, index);//截取0-lastindex前的字符串
        }
        return name;
    }
/*文件后缀*/
    public static String getExtendName(String fileName) {
        String extendName=null;
        if(fileName.length()!=0){

            int index = fileName.lastIndexOf(".");
            extendName = fileName.substring(index+1);//截取到.之后的字符串
        }
        return extendName;
    }

    public static String getUuid() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

    public static String getTime() {
        return "" + new Date().getTime();
    }

    public static void main(String[] args) {
        System.out.println(timeName("1.jpeg"));
    }

}
