package com.dfrz.controller;

import com.dfrz.bean.Goods;
import com.dfrz.service.GoodsService;
import com.dfrz.service.impl.GoodsServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.dfrz.util.CopyFileUtil;
import com.dfrz.util.NameUtil;
import com.dfrz.util.StringUtils;
import com.dfrz.util.Uuid;
import com.dfrz.vo.GoodsVo;
import com.google.gson.Gson;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.util.List;

@WebServlet("/goodsinfo")
public class GoodsServlet extends BaseServlet {
    /*查询*/
    private GoodsService goodsService = new GoodsServiceImpl();

    public void queryAllGoods(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String goodsname = request.getParameter("goodname");
        String starttime = request.getParameter("starttime");
        String endtime = request.getParameter("endtime");
        int goodstype = 0;

        if (StringUtils.isNotBlank(request.getParameter("goodstype"))) {
            goodstype = Integer.parseInt(request.getParameter("goodstype"));
        }


        System.out.println(starttime + endtime);
        GoodsVo goodsVo = new GoodsVo();
        goodsVo.setStarttime(starttime);
        goodsVo.setEndtime(endtime);
        goodsVo.setGname(goodsname);
        goodsVo.setGtype(goodstype);

        List<Goods> goodsList = goodsService.queryGoods(goodsVo);
        System.out.println(goodsList);
        Gson gson = new Gson();
        String list = gson.toJson(goodsList);
        response.getWriter().write(list);

    }

    /*下架*/
    public void stopStatue(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String gid = request.getParameter("gid");
        int updatenum = goodsService.stopStatue(gid);
        if (updatenum != 0) {
            response.getWriter().write("操作成功");
        } else if (updatenum == 0) {
            response.getWriter().write("修改失败");
        }
    }

    /*上架*/
    public void actionStatue(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String gid = request.getParameter("gid");
        int updatenum = goodsService.actionStatue(gid);
        if (updatenum != 0) {
            response.getWriter().write("操作成功");
        } else if (updatenum == 0) {
            response.getWriter().write("修改失败");
        }
    }

    /*修改回显*/
    public void querybyid(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String gid = request.getParameter("gid");
        Goods good = goodsService.findGoodById(gid);
        Gson gson = new Gson();
        String list = gson.toJson(good);
        response.getWriter().write(list);
    }


    public void goodsUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String gid = "";
        String goodsname = "";
        String price = "";
        String gtype = "";
        String gnum = "";
        String detail = "";
        String gpic = "";
        Goods goods=null;
        //1. 需要有一个“中间”文件用于上传文件时的作为临时文件的需要，加快上传速度
        String tempPath = getServletContext().getRealPath("/WEB-INF/upload/temp/");
        //创建文件夹，临时文件会放入这个文件夹中！
        File tempFile = new File(tempPath);
        System.out.println("临时文件夹" + tempFile);
        if (!tempFile.exists()) {
            tempFile.mkdir();
        }

        //2. 创建磁盘文件项工厂，设置缓存文件的大小和保存的位置
        DiskFileItemFactory factory = new DiskFileItemFactory(1024 * 1024 * 100, tempFile);//单位byte 8bit 1024byte等于一kb`此处为100兆

        //3. 创建一个文件上传的工具，指定使用磁盘文件项工厂
        ServletFileUpload upload = new ServletFileUpload(factory);
        //设置上传中文文字字符编码
        upload.setHeaderEncoding("utf-8");

        //设置上传文件的大小 500M
        upload.setFileSizeMax(1024 * 1024 * 500);

        //设置上传文件的总大小 1G
        upload.setSizeMax(1024 * 1024 * 1024);


        //如果不是文件上传，直接返回enctype="multipart/form-data"
        if (!ServletFileUpload.isMultipartContent(request)) {
            System.out.println("===");
            return;
        }

        try {
            //通过解析request,获取文件项对象的集合
            List<FileItem> items = upload.parseRequest(request);

            //遍历文件项集合
            for (FileItem fileItem : items) {
                //判断此文件项是否是表单中的字段:是的话就输出，也可以把他放进一个map集合set出去，在作用域中去取到
                if (fileItem.isFormField()) {
                    //获取表单键的名称
                    switch (fileItem.getFieldName()) {
                        case "gid":
                            gid = fileItem.getString("utf-8");
                            break;
                        case "gtype":
                            gtype = fileItem.getString("utf-8");
                            break;
                        case "gname":
                            goodsname = fileItem.getString("utf-8");
                            break;
                        case "gprice":
                            price = fileItem.getString("utf-8");
                            break;
                        case "gnum":
                            gnum = fileItem.getString("utf-8");
                            break;
                        case "gpicvalue":
                            gpic = fileItem.getString("utf-8");
                            break;
                        case "detailvalue":
                            detail = fileItem.getString("utf-8");
                            break;

                    }

                } else {//如果不是表单中字段，说明此文件项是上传文件
                    //获取上传文件的文件名
                    String fileItemName = fileItem.getName();
                    System.out.println(fileItemName);
                    if (!("".equals(fileItemName) && "null".equals(fileItemName))) {//如果该文件项是上传文件，但是获取该文件的名为null说明没有选择文件，则不进行流的操作
                        System.out.println("文件名" + fileItemName);
                        //获取上传文件的输入流
                        InputStream in = fileItem.getInputStream();

                        System.out.println(fileItem.getFieldName());
                        //创建一个文件的输出流，把文件输出到服务端
                        String fileName = NameUtil.timeName(fileItemName);
                        System.out.println("fileItemName:" + fileName);
                        if (!fileName.contains("null")) {

                            if (fileItem.getFieldName().equals("detail")) {
                                detail = "HomePage/images/product/detail/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/detail/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "1".equals(gtype)) {
                                gpic = "HomePage/images/product/AirPods/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/AirPods/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "2".equals(gtype)) {
                                gpic = "HomePage/images/product/AppleWatch/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/AppleWatch/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "3".equals(gtype)) {
                                gpic = "HomePage/images/product/iPad/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/iPad/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "4".equals(gtype)) {
                                gpic = "HomePage/images/product/iPhone/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/iPhone/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "5".equals(gtype)) {
                                gpic = "HomePage/images/product/MacBook/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/MacBook/" + fileName);
                                System.out.println("filename" + fileName);

                            }
                        }
                        goods = new Goods();
                        goods.setGid(gid);
                        goods.setPrice(Double.parseDouble(price));
                        goods.setGtype(Integer.parseInt(gtype));
                        goods.setGname(goodsname);
                        goods.setGpic(gpic);
                        goods.setNum(Integer.parseInt(gnum));
                        goods.setDetail(detail);
                        System.out.println(goods);
                        OutputStream out = new FileOutputStream(fileName);
                        //拷贝文件
                        CopyFileUtil.copy(in, out);

                    } else {
                        System.out.println("hhhhhhhh");
                    }

                    int updatenum = goodsService.Update(goods);
                    if (updatenum != 0) {
                        response.getWriter().write("修改成功");
                    } else if (updatenum == 0) {
                        response.getWriter().write("修改失败");
                    }
                }

            }


        } catch (FileUploadException e) {
            e.printStackTrace();
        }

    }


    public void goodsinsert(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String goodsname = "";
        String price = "";
        String gtype = "";
        String gnum = "";
        String detail = "";
        String gpic = "";
        Goods goods=null;
        //1. 需要有一个“中间”文件用于上传大文件时的作为临时文件的需要，加快上传速度
        String tempPath = getServletContext().getRealPath("/WEB-INF/upload/temp/");
        //创建文件夹，临时文件会放入这个文件夹中！
        File tempFile = new File(tempPath);
        System.out.println("临时文件夹" + tempFile);
        if (!tempFile.exists()) {
            tempFile.mkdir();
        }

        //2. 创建磁盘文件项工厂，设置缓存文件的大小和保存的位置
        DiskFileItemFactory factory = new DiskFileItemFactory(1024 * 1024 * 100, tempFile);//单位byte 8bit 1024byte等于一kb`此处为100兆

        //3. 创建一个文件上传的工具，指定使用磁盘文件项工厂
        ServletFileUpload upload = new ServletFileUpload(factory);
        //设置上传中文文字字符编码
        upload.setHeaderEncoding("utf-8");

        //设置上传文件的大小 500M
        upload.setFileSizeMax(1024 * 1024 * 500);

        //设置上传文件的总大小 1G
        upload.setSizeMax(1024 * 1024 * 1024);


        //如果不是文件上传，直接返回enctype="multipart/form-data"
        if (!ServletFileUpload.isMultipartContent(request)) {
            System.out.println("===");
            return;
        }

        try {
            //通过解析request,获取文件项对象的集合
            List<FileItem> items = upload.parseRequest(request);

            //遍历文件项集合
            for (FileItem fileItem : items) {
                //判断此文件项是否是表单中的字段:是的话就输出，也可以把他放进一个map集合set出去，在作用域中去取到
                if (fileItem.isFormField()) {
                    //获取表单键的名称
                    switch (fileItem.getFieldName()) {
                        case "addgoodtype":
                            gtype = fileItem.getString("utf-8");
                            break;
                        case "addgname":
                            goodsname = fileItem.getString("utf-8");
                            break;
                        case "addgprice":
                            price = fileItem.getString("utf-8");
                            break;
                        case "addgnum":
                            gnum = fileItem.getString("utf-8");
                            break;

                    }

                } else {//如果不是表单中字段，说明此文件项是上传文件
                    //获取上传文件的文件名
                    String fileItemName = fileItem.getName();
                    System.out.println(fileItemName);
                    if (!("".equals(fileItemName) && "null".equals(fileItemName))) {//如果该文件项是上传文件，但是获取该文件的名为null说明没有选择文件，则不进行流的操作
                        System.out.println("文件名" + fileItemName);
                        //获取上传文件的输入流
                        InputStream in = fileItem.getInputStream();

                        System.out.println(fileItem.getFieldName());
                        //创建一个文件的输出流，把文件输出到服务端
                        String fileName = NameUtil.timeName(fileItemName);
                        System.out.println("fileItemName:" + fileName);
                        if (!fileName.contains("null")) {

                            if (fileItem.getFieldName().equals("detail")) {
                                detail = "HomePage/images/product/detail/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/detail/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "1".equals(gtype)) {
                                gpic = "HomePage/images/product/AirPods/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/AirPods/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "2".equals(gtype)) {
                                gpic = "HomePage/images/product/AppleWatch/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/AppleWatch/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "3".equals(gtype)) {
                                gpic = "HomePage/images/product/iPad/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/iPad/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "4".equals(gtype)) {
                                gpic = "HomePage/images/product/iPhone/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/iPhone/" + fileName);
                                System.out.println("filename" + fileName);

                            } else if (fileItem.getFieldName().equals("gpic") && "5".equals(gtype)) {
                                gpic = "HomePage/images/product/MacBook/" + fileName;
                                fileName = getServletContext().getRealPath("/HomePage/images/product/MacBook/" + fileName);
                                System.out.println("filename" + fileName);

                            }
                        }
                        goods = new Goods();
                        goods.setGid(Uuid.uuid());
                        goods.setPrice(Double.parseDouble(price));
                        goods.setGtype(Integer.parseInt(gtype));
                        goods.setGname(goodsname);
                        goods.setGpic(gpic);
                        goods.setCreatetime(new Date());
                        goods.setNum(Integer.parseInt(gnum));
                        goods.setDetail(detail);
                        goods.setStatu(1);
                        System.out.println(goods);
                        OutputStream out = new FileOutputStream(fileName);
                        //拷贝文件
                        CopyFileUtil.copy(in, out);

                    } else {
                        System.out.println("hhhhhhhh");
                    }

                }

            }
            int updatenum = goodsService.insertGood(goods);
            if (updatenum != 0) {
                response.getWriter().write("添加成功");
            } else if (updatenum == 0) {
                response.getWriter().write("添加失败");
            }

        } catch (FileUploadException e) {
            e.printStackTrace();
        }

    }

    public void deleteAll(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String[] gidlist = request.getParameterValues("gidlist[]");
        System.out.println("userid" + gidlist);
        int i = goodsService.deleteall(gidlist);
        if (i != 0) {
            response.getWriter().write("删除成功");
        } else {
            response.getWriter().write("删除失败");
        }
    }

    public void deleteById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String gid = request.getParameter("gid");
        String[] gidlist = {gid};
        int i = goodsService.deleteall(gidlist);
        if (i != 0) {
            response.getWriter().write("删除成功");
        } else {
            response.getWriter().write("删除失败");
        }
    }

    public void checkGoodByName(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String goodname = request.getParameter("goodname");
        System.out.println(goodname);
        Goods good = goodsService.findGoodByGname(goodname);
        boolean flag = true;
        if (good != null) {
            flag = false;
        }
        String result = "";
        if (flag) {
            result = "<span class='ok'>OK</span>";
        } else {
            result = "<span class='No'>产品以存在</span>";
        }

        response.getWriter().write(result);

    }

}
