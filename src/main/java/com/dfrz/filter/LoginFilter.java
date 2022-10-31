package com.dfrz.filter;

import com.dfrz.bean.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        User user=(User)session.getAttribute("userinfo");
        if(user!=null&&user.getUtype()==2){
            chain.doFilter(request,response);
        }else {
            request.getRequestDispatcher("/jsp/visitFault.jsp").forward(request,response);
        }

    }

    @Override
    public void destroy() {
    }
}
