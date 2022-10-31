package com.dfrz.filter;

import javax.servlet.*;
import java.io.IOException;

public class CodeFilter implements Filter {
    public CodeFilter(){
        System.out.println("过滤器初始化");
    }
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("filter open");
    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=UTF-8");
        filterChain.doFilter(servletRequest, servletResponse);
    }
    @Override
    public void destroy() {
        System.out.println("filter close");
    }
}
