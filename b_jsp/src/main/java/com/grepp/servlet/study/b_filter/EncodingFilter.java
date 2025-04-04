package com.grepp.servlet.study.b_filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        
        
        
        System.out.println("system : encoding filter 실행");
        
        request.setCharacterEncoding("utf-8");
        HttpServletResponse res = (HttpServletResponse) response;
        res.setHeader("content-type", "text/html; charset=utf-8");
        chain.doFilter(request, response);
    }
    
}
