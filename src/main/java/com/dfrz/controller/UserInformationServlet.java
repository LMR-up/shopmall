package com.dfrz.controller;

import com.dfrz.bean.*;
import com.dfrz.service.UserInformationService;
import com.dfrz.service.impl.UserInformationServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.dfrz.util.CopyFileUtil;
import com.dfrz.util.NameUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.Map;

@WebServlet("/accountInfoOnload")
public class UserInformationServlet extends BaseServlet {
    UserInformationService userInformationService = new UserInformationServiceImpl();


    //查询用户全部信息
    public void userInformationList(HttpServletRequest request, HttpServletResponse response) throws IOException {

        /* System.out.println("------" + name + ":" + vakue +"--------\n");*/
        HttpSession session = request.getSession();
        User users = (User) session.getAttribute("userinfo");
        List<UserInformation> list=userInformationService.queryAllByID(users.getUid());

        System.out.println(list);
        Gson gson = new Gson();
        String json = gson.toJson(list);

        System.out.println(json);
        //发送json对象
        response.getWriter().write(json);

    }

    //获取默认地址
    /*public void userDefaultAddress(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取session
        HttpSession session   =   request.getSession();
        // 获取session中所有的键值
        Enumeration<String> attrs = session.getAttributeNames();
        // 遍历attrs中的
        while(attrs.hasMoreElements()){
            // 获取session键值
            String name = attrs.nextElement().toString();
            // 根据键值取session中的值
            Object vakue = session.getAttribute(name);

            // 打印结果
            System.out.println("------" + name + ":" + vakue +"--------\n");

            Gson gson = new Gson();
            String json=gson.toJson(vakue);
            System.out.println(json);
            //发送json对象
            response.getWriter().write(json);


        }
    }*/
    //获取地址
    public void userAddress(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        List<UserAddress> list = userInformationService.queryAddressById(uid);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        response.getWriter().write(json);
    }

    //修改用户信息
    public void userInformationUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String Uuid = request.getParameter("Uuid");
        System.out.println(Uuid);
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        String umail = request.getParameter("umail");
        String phone = request.getParameter("phone");

        UserInformation userInformation = new UserInformation(Uuid, null, password, nickname, null, umail, phone, 0, 0, 0, 0);

        userInformationService.updateUserInformationByUid(userInformation);

    }

    //删除地址
    public void deleteAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        userInformationService.deleteById(id);
    }

    //回显地址
    public void userAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        List<UserAddress> list = userInformationService.queryAddressByAddressId(id);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        response.getWriter().write(json);
    }

    //更新地址
    public void updateAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String sid = request.getParameter("id");
        String addressee = request.getParameter("addressee");
        System.out.println(addressee);
        String address = request.getParameter("address");
        System.out.println(address);
        String phone = request.getParameter("telephone");
        System.out.println(phone);
        System.out.println("++++++++++++++++++++++++++++++++++++++++");
        int id = Integer.parseInt(sid);
        userInformationService.updateAddressById(id, addressee, address, phone);
    }

    //插入地址
    public void insertAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("id");
        String addressee = request.getParameter("addressee");
        String address = request.getParameter("address");
        String phone = request.getParameter("telephone");
        userInformationService.insertAddressById(uid, addressee, address, phone);
    }

    //设置默认地址
    public void setStatueAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        userInformationService.setStatueAddressById(id);
    }

    //更新钱包
    public void userAccountUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String Uuid = request.getParameter("Uuid");

        System.out.println(Uuid);

        Double accountAdd = Double.parseDouble(request.getParameter("accountAdd"));

        Double accountOld = Double.parseDouble(request.getParameter("accountOld"));

        Double account = userInformationService.updateUserAccountByUid(Uuid, accountAdd, accountOld);

        UserInformation userInformation = new UserInformation();

        userInformation.setAccount(account);

        JsonObject obj = new JsonObject();
        obj.addProperty("account", account);

        System.out.println(obj.toString());
        response.getWriter().write(obj.toString());

    }

    //上传头像
    public void userHpicUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        //1. 需要有一个“中间”文件用于上传文件时的作为临时文件的需要。
        String tempPath = getServletContext().getRealPath("/temp");
        //创建文件夹，临时文件会放入这个文件夹中！
        File tempFile = new File(tempPath);
        if (tempFile.exists()) {
            tempFile.mkdir();
        }

        //2. 创建磁盘文件项工厂，设置缓存文件的大小和保存的位置
        DiskFileItemFactory factory = new DiskFileItemFactory(1024 * 10, tempFile);

        //3. 创建一个文件上传的工具，指定使用磁盘文件项工厂
        ServletFileUpload upload = new ServletFileUpload(factory);

        //设置上传中文名字字符编码
        upload.setHeaderEncoding("utf-8");

        //如果不是文件上传，直接返回enctype="multipart/form-data"
        if (!ServletFileUpload.isMultipartContent(request)) {
            return;
        }

        //设置上传文件的大小 500M
        upload.setFileSizeMax(1024 * 1024 * 500);

        //设置上传文件的总大小 1G
        upload.setSizeMax(1024 * 1024 * 1024);
        String fileName = null;
        String Uuid = null;

        try {
            //通过解析request,获取文件项对象的集合
            List<FileItem> items = upload.parseRequest(request);

            //遍历文件项（包含用户上传的文件，以及请求参数的键值对
            for (FileItem fileItem : items) {

                //判断此文件项是否是表单的字段： username=wang
                if (fileItem.isFormField()) {
                    //获取表单键的名称
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString("utf-8");
                    System.out.println(name + "----" + value);
                    Uuid = value;
                } else { //不是表单字段，说明此文件项是“上传文件”

                    //获取上传文件的文件名
                    String fileItemName = fileItem.getName();
                    System.out.println("fileItemName:" + fileItemName);
                    //获取上传文件的输入流
                    InputStream in = fileItem.getInputStream();
                    InputStream in2 = fileItem.getInputStream();
                    //创建一个文件的输出流，把文件输出到服务端
                    fileName = NameUtil.uuidName(fileItemName);
                    //将文件地址传入数据库

                    String fileName1 = getServletContext().getRealPath("/WEB-INF/hpic/" + fileName);
                    String fileName2 = getServletContext().getRealPath("/hpic/" + fileName);
                    System.out.println("fileName1:" + fileName1);
                    System.out.println("fileName2:" + fileName2);
                    OutputStream out = new FileOutputStream(fileName1);
                    OutputStream out2 = new FileOutputStream(fileName2);
                    //拷贝文件
                    CopyFileUtil.copy(in, out);
                    CopyFileUtil.copy(in2, out2);
                }


            }

            userInformationService.updateUserhpicByUid("/WEB-INF/hpic/" + fileName, Uuid);
            System.out.println(fileName);
            request.getRequestDispatcher("/my-account.html").forward(request, response);

        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    //回显头像
    public void userHpic(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        String filePath = userInformationService.seachHpicByUid(uid);
        String temp = filePath.substring(filePath.lastIndexOf("/") + 1);
        String targetPath = "/hpic/" + temp;
        JsonObject obj = new JsonObject();
        obj.addProperty("hpic", targetPath);
        System.out.println(obj.toString());
        response.getWriter().write(obj.toString());
    }

    //用户订单查询
    public void userOrderList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        List<OrderInformation> list = userInformationService.queryOrderInformation(uid);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        response.getWriter().write(json);
    }

    //订单分页
    public void FindProductByPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //1.获取请求参数
        HttpSession session = request.getSession();
        User users = (User) session.getAttribute("userinfo");
        String uid = users.getUid();
        System.out.println("uid==="+uid);
        int utype=users.getUtype();
        String currentPage = request.getParameter("currentPage");

        String rows = "5";
        //判断从其他的页面传递过来的时候,这个时候需要做对其当前页的判断
        if (currentPage == null) {
            currentPage = "1";
        }

        System.out.println("当前页码是:" + currentPage);
        System.out.println("每页的条数是:" + rows);

        //2.调用service进行查询

        PageBean<OrderInformation> pb = userInformationService.findUserByPage(currentPage, rows, uid, utype);

        System.out.println(pb.getTotalPage() + "***************");

        //3.将pageBean存入到域对象中
        //request.setAttribute("pb",pb);
        //4.转发到list.jsp页面中去
        Gson gson = new Gson();
        String json = gson.toJson(pb);
        System.out.println(json);
        response.getWriter().write(json);

    }

    //订单详细查询
    public void userOrderInformationList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        System.out.println(uid);
        List<Map<String, Object>> objects = userInformationService.userOrderInformationList(uid);
        System.out.println(objects);
        Gson gson = new Gson();
        String json = gson.toJson(objects);
        System.out.println(json);
        response.getWriter().write(json);
    }

    //updatePage
    public void updatePage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User users = (User) session.getAttribute("userinfo");
        String uid = users.getUid();
        String message=request.getParameter("message");
        String currentpage=request.getParameter("currentpage");
        if (currentpage == null) {
            currentpage = "1";
        }
        String totalPage=request.getParameter("totalPage");
        userInformationService.updatePage(message,currentpage,totalPage,uid);
    }
}