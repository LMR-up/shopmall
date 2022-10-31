package com.dfrz.export;

import com.dfrz.bean.User;
import com.dfrz.common.Constant;
import com.dfrz.dao.UserDao;
import com.dfrz.dao.impl.UserDaoImpl;
import com.dfrz.util.DateUtils;
import com.dfrz.vo.UserVo;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;


public class UserinfoExport {
    public static String exportAll( UserVo userVo) {
        String result=null;
        //实例化一个dao类对象
        UserDao userDao = new UserDaoImpl();
        List<User> page = userDao.page(userVo);//获取数据
        //标题
        String[] title = {"uid","管理员账户", "账户密码", "注册时间", "手机号码", "邮箱", "在职状态"};
        //创建一个SXSSFWorkbook工作簿  读取.xls 格式
        //自定义内存中数据的数量
        SXSSFWorkbook wb = new SXSSFWorkbook(7);
        //将SXSSFWorkbook工作簿添加到表
        Sheet sheet = wb.createSheet();
        //创建行，  0：代表第一个单元格
        Row row = sheet.createRow(0);
        //给单元格设置样式，添加到工作簿的样式表中
        CellStyle cellStyle = wb.createCellStyle();
        //创建一个新字体，并添加到工作簿的字体表中
        Font font = wb.createFont();
        //设置字体大小
        font.setFontHeightInPoints((short) 12);
        //设置字体加粗

        font.setBold(true);
        //给字体设置样式
        cellStyle.setFont(font);
        //设置单元格背景颜色
        cellStyle.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
        //设置单元格填充样式（使用纯色背景颜色填充）
        cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        //填充表头数据
        for (int i = 0; i < title.length; i++) {
            //创建新单元格
            Cell cell = row.createCell(i);
            //放入 标题单元格的数值
            cell.setCellValue(title[i]);
            //为单元格设置样式
            cell.setCellStyle(cellStyle);
            //设置列的宽度
            sheet.setColumnWidth(i, 80 * 50);
        }
        //填充数据库表数据
        for (int j = 0; j < page.size(); j++) {
            //创建行
            Row r = sheet.createRow(j + 1);
            User user = page.get(j);

            //获取 编号的数值（第一个单元格）
            Cell cell = r.createCell(0);
            cell.setCellValue(user.getUid());
            //获取 名字的数值
            Cell cell2 = r.createCell(1);
            cell2.setCellValue(user.getUname());
            //获取 性别的数值
            Cell cell3 = r.createCell(2);
            cell3.setCellValue(user.getPassword());
            //获取 接种疫苗的数值
            Cell cell4 = r.createCell(3);
            cell4.setCellValue(DateUtils.format(user.getCreatetime()));
            //获取 结果的数值
            Cell cell5 = r.createCell(4);
            cell5.setCellValue(user.getPhone());
            //获取 地址的数值
            Cell cell6 = r.createCell(5);
            cell6.setCellValue(user.getUmail());
            Cell cell7 = r.createCell(6);
            cell7.setCellValue(user.getStatue());

        }
        //设置输出路径
        String filename = "E:\\"+(String.valueOf(new Date().getTime())).substring(6)+"管理员信息表.xls";
        try {
            // 输出到硬盘，所以要用到IO流，输出到fileName指定的路径上
            FileOutputStream fos = new FileOutputStream(filename);
            wb.write(fos);//写出
            wb.close();//关闭
            fos.close();//关闭
             result=filename;
        } catch (Exception e) {
            //异常信息
            e.printStackTrace();

        }
        return  result;
    }
    public static String export( Integer pageindex,Integer pagesize,UserVo userVo) {
        String result=null;
        //实例化一个dao类对象
        UserDao userDao = new UserDaoImpl();
        List<User> page = userDao.page1(pageindex,pagesize,userVo);//获取数据
        //标题
        String[] title = {"uid","管理员账户", "账户密码", "注册时间", "手机号码", "邮箱", "在职状态"};
        //创建一个SXSSFWorkbook工作簿  读取.xls 格式
        //自定义内存中数据的数量
        SXSSFWorkbook wb = new SXSSFWorkbook(7);
        //将SXSSFWorkbook工作簿添加到表
        Sheet sheet = wb.createSheet();
        //创建行，  0：代表第一个单元格
        Row row = sheet.createRow(0);
        //给单元格设置样式，添加到工作簿的样式表中
        CellStyle cellStyle = wb.createCellStyle();
        //创建一个新字体，并添加到工作簿的字体表中
        Font font = wb.createFont();
        //设置字体大小
        font.setFontHeightInPoints((short) 12);
        //设置字体加粗

        font.setBold(true);
        //给字体设置样式
        cellStyle.setFont(font);
        //设置单元格背景颜色
        cellStyle.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
        //设置单元格填充样式（使用纯色背景颜色填充）
        cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        //填充表头数据
        for (int i = 0; i < title.length; i++) {
            //创建新单元格
            Cell cell = row.createCell(i);
            //放入 标题单元格的数值
            cell.setCellValue(title[i]);
            //为单元格设置样式
            cell.setCellStyle(cellStyle);
            //设置列的宽度
            sheet.setColumnWidth(i, 80 * 50);
        }
        //填充数据库表数据
        for (int j = 0; j < page.size(); j++) {
            //创建行
            Row r = sheet.createRow(j + 1);
            User user = page.get(j);

            //获取 编号的数值（第一个单元格）
            Cell cell = r.createCell(0);
            cell.setCellValue(user.getUid());
            //获取 名字的数值
            Cell cell2 = r.createCell(1);
            cell2.setCellValue(user.getUname());
            //获取 性别的数值
            Cell cell3 = r.createCell(2);
            cell3.setCellValue(user.getPassword());
            //获取 接种疫苗的数值
            Cell cell4 = r.createCell(3);
            cell4.setCellValue(DateUtils.format(user.getCreatetime()));
            //获取 结果的数值
            Cell cell5 = r.createCell(4);
            cell5.setCellValue(user.getPhone());
            //获取 地址的数值
            Cell cell6 = r.createCell(5);
            cell6.setCellValue(user.getUmail());
            Cell cell7 = r.createCell(6);
            cell7.setCellValue(user.getStatue());

        }
        //设置输出路径
        String filename = "E:\\"+(String.valueOf(new Date().getTime())).substring(6)+"管理员信息表.xls";
        try {
            // 输出到硬盘，所以要用到IO流，输出到fileName指定的路径上
            FileOutputStream fos = new FileOutputStream(filename);
            wb.write(fos);//写出
            wb.close();//关闭
            fos.close();//关闭
            result=filename;
        } catch (Exception e) {
            //异常信息
            e.printStackTrace();

        }
        return  result;
    }
}
