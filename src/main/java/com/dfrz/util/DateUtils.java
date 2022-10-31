package com.dfrz.util;




import com.dfrz.common.Constant;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * 日期格式转换
 */
public class DateUtils {

    /**
     * 将Date转换为String类型的 当做订单编号使用
     * @return
     */
    public static String format(){
        Date d = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat(Constant.YYYYMMDDHHMMSS);
        String strDate = dateFormat.format(d);
        return strDate;
    }

    /**
     *将日期组件获取的日期转成Date类型
     * @param
     * @return
     */
    public static String format(Date d){
        SimpleDateFormat dateFormat = new SimpleDateFormat(Constant.YYYY_MM_DD);
        String strDate = dateFormat.format(d);
        return strDate;
    }

    /**
     * 日期解析
     * @param d
     * @param pattern
     * @return
     */
    public static Date parse(String d,String pattern){
        SimpleDateFormat dateFormat = new SimpleDateFormat(Constant.YYYY_MM_DD);
        try {
            return dateFormat.parse(d);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
    }

    /**
     * LocalDate转换为java.util.Date
     * @param localDate
     * @param
     * @return
     */
    public static Date LocalDateToDate(LocalDate localDate){
        return parse(formatLocalDate(localDate),Constant.YYYY_MM_DD);
    }

    /**
     * java.util.Date转换为LocalDate
     * @param date
     * @return
     */
    public static LocalDate DateToLocalDate(Date date){
        return LocalDate.parse(format(date));
    }

    /**
     *
     * @param localDate
     * @return
     */
    public static String formatLocalDate(LocalDate localDate){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        return dtf.format(localDate);
    }

    public static void main(String[] args) {
    }

}
