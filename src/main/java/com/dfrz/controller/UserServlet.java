package com.dfrz.controller;


import com.dfrz.bean.User;
import com.dfrz.common.Constant;
import com.dfrz.dao.impl.UserDaoImpl;
import com.dfrz.export.UserinfoExport;
import com.dfrz.service.UserService;
import com.dfrz.service.impl.UserServiceImpl;
import com.dfrz.servlet.BaseServlet;
import com.dfrz.util.MD5util;
import com.dfrz.util.SendEmail;
import com.dfrz.util.StringUtils;
import com.dfrz.util.Uuid;
import com.dfrz.vo.UserVo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;


@WebServlet("/userinfo")
public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String uname = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        System.out.println(uname + password);
        //MD5加密
        String pwd = MD5util.md5(password);
        User user = userService.login(uname, pwd);

        Gson gson = new Gson();
        String userinfo = gson.toJson(user);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("userinfo", userinfo);
        System.out.println(userinfo);
        if (user != null) {
            int usertype = user.getUtype();//权限123
            System.out.println(usertype);
            int statue = user.getStatue();//状态1，0可用，注销
            int menber = user.getMenber();//会员1。非会员0
            if (statue == 1) {
                request.getSession().setAttribute("userinfo", user);//用户信息放在session
                if ("remember".equals(remember)) {
                    Cookie cookie1 = new Cookie("uname", uname);
                    Cookie cookie2 = new Cookie("password", password);
                    Cookie cookie3 = new Cookie("remember", remember);

                    cookie1.setMaxAge(7 * 24 * 3600);
                    cookie2.setMaxAge(7 * 24 * 3600);
                    cookie3.setMaxAge(7 * 24 * 3600);
                    //要把cookie发回给客户端（浏览器）
                    response.addCookie(cookie1);
                    response.addCookie(cookie2);
                    response.addCookie(cookie3);
                } else {
                    //不需要记住
                    Cookie cookie1 = new Cookie("uname", "");
                    Cookie cookie2 = new Cookie("password", "");
                    Cookie cookie3 = new Cookie("remember", "");

                    //要把cookie发回给客户端（浏览器）
                    response.addCookie(cookie1);
                    response.addCookie(cookie2);
                    response.addCookie(cookie3);

                }
                if (usertype == 3) {
                    /*跳转到普通用户*/
                    response.sendRedirect("/HomePage/index.jsp");
                  //  request.getRequestDispatcher("/HomePage/index.html").forward(request, response);
                    System.out.println("普通用户登录");

                } else if (usertype == 2) {
                    /*跳转到普管*/
                    request.getRequestDispatcher("/html/adminInit.html").forward(request, response);
                    System.out.println("普管登录");
                } else if (usertype == 1) {
                    /*跳转到超管*/
                    request.getRequestDispatcher("/html/superadmin.html").forward(request, response);
                    System.out.println("超管登录");
                }
            } else if (statue == 0) {
                request.setAttribute("msg", "<span class='No'>用户名已注销，请用正确的用户登录</span>");
                request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
            }
//判断用户类比
        } else {
            request.setAttribute("msg", "<span class='No'>用户名或者密码错误</span>");
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
        }
    }

    public void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String telephone = request.getParameter("telephone");
        String password = MD5util.md5(request.getParameter("password"));
        String email = request.getParameter("umail");

        User user = new User();
        user.setUid(Uuid.uuid());
        user.setUname(username);
        user.setPhone(telephone);
        user.setPassword(password);
        user.setUmail(email);
        user.setStatue(1);//可用状态
        user.setUtype(3);//普通用户类型
        user.setCreatetime(new Date());//注册时间
        user.setHpic("/WEB-INF/hpic/inithead.png");//初始头像
        user.setMenber(0);//初始非会员
        user.setAccount(0.0);//钱包
        user.setScore(0);//积分
        System.out.println(user);
        int resultnum = userService.register(user);
        if (resultnum != 0) {
            request.setAttribute("msg", "注册成功请登录");
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "注册失败请重新注册");
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
        }
        System.out.println("注册成功" + resultnum);


    }

    public void addadmin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("uname");
        String password = MD5util.md5(request.getParameter("password"));
        String telephone = request.getParameter("phone");
        String email = request.getParameter("umail");

        User user = new User();
        user.setUid(Uuid.uuid());
        user.setUname(username);
        user.setPhone(telephone);
        user.setPassword(password);
        user.setUmail(email);
        user.setStatue(1);//可用状态
        user.setUtype(2);//管理员类型
        user.setCreatetime(new Date());//注册时间
        user.setHpic("/WEB-INF/hpic/inithead.png");//初始头像
        user.setMenber(0);//初始非会员
        user.setAccount(0.0);//钱包
        user.setScore(0);//积分
        System.out.println(user);
        int resultnum = userService.register(user);
        if (resultnum != 0) {
            response.getWriter().write("添加成功");
        } else {
            response.getWriter().write("添加失败");
        }


    }

    public void emailLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("uname");
        String umail = request.getParameter("umail");
        System.out.println(username + "用户邮箱" + umail);

        User user = new UserDaoImpl().findUserBynameAemail(username, umail);
        Gson gson = new Gson();
        String userinfo = gson.toJson(user);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("userinfo", userinfo);

        System.out.println(userinfo);
        if (user != null) {
            int usertype = user.getUtype();//权限123
            System.out.println("emiallogin" + usertype);
            int statue = user.getStatue();//状态1，0可用，注销
            System.out.println("emiallogin" + statue);
            int menber = user.getMenber();//会员1。非会员0
            if (statue == 1) {
                request.getSession().setAttribute("userinfo", user);//用户信息放在session
                if (usertype == 3) {
                    /*跳转到普通用户*/
                    response.sendRedirect("/HomePage/index.jsp");
                   // request.getRequestDispatcher("/HomePage/index.html").forward(request, response);
                    System.out.println("普通用户登录");

                } else if (usertype == 2) {
                    /*跳转到普管*/
                    request.getRequestDispatcher("/html/adminInit.html").forward(request, response);
                    System.out.println("普管登录");
                } else if (usertype == 1) {
                    /*跳转到超管*/
                    request.getRequestDispatcher("/html/superadmin.html").forward(request, response);
                    System.out.println("超管登录");
                }
            } else if (statue == 0) {
                String loginmsg = "该用户已注销，请使用正常的用户登录";
                request.setAttribute("loginfailmsg", loginmsg);
                request.getRequestDispatcher("/jsp/emaillogin.jsp").forward(request, response);
            }
        } else {
            String loginmsg = "用户名与邮箱不匹配，请确认信息";
            System.out.println(loginmsg);
            request.setAttribute("loginfailmsg", loginmsg);
            request.getRequestDispatcher("/jsp/emaillogin.jsp").forward(request, response);
        }
    }

    public void checkUserByNameAndemail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("uname");
        String umail = request.getParameter("umail");
        System.out.println(username + "用户邮箱" + umail);

        User user = new UserDaoImpl().findUserBynameAemail(username, umail);
        Gson gson = new Gson();
        String userinfo = gson.toJson(user);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("userinfo", userinfo);

        System.out.println(userinfo);
        if (user != null) {

        } else {
            String loginmsg = "用户名与邮箱不匹配，请确认信息";
            out.println(loginmsg);
        }


    }

    public void changePwd(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uname = request.getParameter("uname");
        String password = MD5util.md5(request.getParameter("password"));
        User user = new User();
        user.setUname(uname);
        user.setPassword(password);
        int i = userService.changePassword(user);
        if (i == 0) {
            response.getWriter().write("修改失败，请重新修改");
        }
    }


    public void checkUserByName(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        System.out.println(username);
        User user = new UserDaoImpl().findUserByUsername(username);
        System.out.println(user);
        boolean flag = true;
        if (user != null) {
            flag = false;
        }
        String result = "";
        if (flag) {
            result = "<span class='ok'>OK</span>";
        } else {
            result = "<span class='No'>用户名已存在</span>";
        }

        response.getWriter().write(result);

    }


    public void querypage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String starttime = request.getParameter("starttime");
        String endtime = request.getParameter("endtime");

        System.out.println(starttime + endtime);
        UserVo userVo = new UserVo();
        userVo.setUname(username);
        userVo.setStarttime(starttime);
        userVo.setEndtime(endtime);
        int count = userService.getcount(userVo);//总数据条数
        System.out.println("共有数据条数" + count);
        List<User> userlist = userService.page(userVo);
        System.out.println(userlist);
        Gson gson = new Gson();
        String list = gson.toJson(userlist);
        response.getWriter().write(list);

    }

    public void querybyid(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        User user = userService.findUserById(uid);
        Gson gson = new Gson();
        String list = gson.toJson(user);
        response.getWriter().write(list);
    }

    public void updatebyid(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        String uname = request.getParameter("uname");
        String phone = request.getParameter("phone");
        String umail = request.getParameter("umail");
        String password = MD5util.md5(request.getParameter("password"));
        User user = new User();
        user.setUid(uid);
        user.setUname(uname);
        user.setPhone(phone);
        user.setUmail(umail);
        user.setPassword(password);

        int updatenum = userService.Update(user);
        if (updatenum != 0) {
            response.getWriter().write("修改成功");
        } else if (updatenum == 0) {
            response.getWriter().write("修改失败");
        }
    }

    /* 禁用*/
    public void stopStatue(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        int updatenum = userService.stopStatue(uid);
        if (updatenum != 0) {
            response.getWriter().write("操作成功");
        } else if (updatenum == 0) {
            response.getWriter().write("修改失败");
        }
    }

    /*启用*/
    public void actionStatue(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        int updatenum = userService.actionStatue(uid);
        if (updatenum != 0) {
            response.getWriter().write("操作成功");
        } else if (updatenum == 0) {
            response.getWriter().write("修改失败");
        }
    }

    public void deleteAll(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String[] useridlist = request.getParameterValues("userlist[]");
        System.out.println("userid" + useridlist);
        int i = userService.deleteall(useridlist);
        if (i != 0) {
            response.getWriter().write("删除成功");
        } else {
            response.getWriter().write("删除失败");
        }
    }

    public void deleteById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uid = request.getParameter("uid");
        String[] useridlist = {uid};
        int i = userService.deleteall(useridlist);
        if (i != 0) {
            response.getWriter().write("删除成功");
        } else {
            response.getWriter().write("删除失败");
        }
    }

    /**
     * 顾客退出登录清楚session信息
     *
     * @param req
     * @param res
     * @throws Exception
     */
    public void OutLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
        req.getSession().removeAttribute("userinfo");
        req.getSession().invalidate();
        res.sendRedirect("/");
    }

    /**
     * 导出所有管理员信息
     *
     * @param request
     * @param request
     * @throws Exception
     */
    public void exportAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String starttime = request.getParameter("starttime");
        String endtime = request.getParameter("endtime");
        UserVo userVo = new UserVo();
        userVo.setUname(username);
        userVo.setStarttime(starttime);
        userVo.setEndtime(endtime);
        String result = UserinfoExport.exportAll(userVo);
        System.out.println(result);
        response.getWriter().write("文件保存在:  " + result);
    }

    public void export(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String starttime = request.getParameter("starttime");
        String endtime = request.getParameter("endtime");
        Integer pageindex = Integer.parseInt(request.getParameter("pageindex"));
        UserVo userVo = new UserVo();
        userVo.setUname(username);
        userVo.setStarttime(starttime);
        userVo.setEndtime(endtime);
        String result = UserinfoExport.export(pageindex, Constant.PAGE_SIZE,userVo);
        System.out.println(result);
        response.getWriter().write("文件保存在:  " + result);
    }
    public void sendemail(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //1.设置编码、输出类
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //2.2获取用户的邮箱
        String email = request.getParameter("umail");
        System.out.println(email);
        //3.创建一个空的用户对象

        response.setHeader("pragma", "no-cache");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("expires", "0");

        //生成随机的验证码发给作为邮箱内容发送
        String base = "0123456789ABCDEFGHIJKLMNOPQRSDUVWXYZabcdefghijklmnopqrsduvwxyz";
        int size = base.length();
        Random r = new Random();
        StringBuilder code = new StringBuilder();
        for (int i = 1; i <= 4; i++) {
            //产生0到size-1的随机值
            int index = r.nextInt(size);
            //在base字符串中获取下标为index的字符
            char c = base.charAt(index);
            //将c放入到StringBuffer中去
            code.append(c);
        }
        System.out.println(code.toString());
        //把验证码保存在session中，方便后续判断
        request.getSession().setAttribute("EmailCode", code.toString());
        Cookie cookie = new Cookie("emailcode", code.toString());
        response.addCookie(cookie);


        //实例化一个发送邮件的对象
        SendEmail mySendMail = new SendEmail();
        //发送邮件
        mySendMail.sendMail(email, "您正在找回密码，验证码为:" + code.toString() + "\n\r只有一次输入机会，请正确输入！如非本人操作，请忽略。");
        //跳转页面
        out.println("验证码已发送至邮箱，请注意查收！");

    }




}

