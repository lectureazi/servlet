package com.grepp.servlet.study.b_filter;

import com.grepp.servlet.infra.exception.AuthorizationException;
import com.grepp.servlet.infra.exception.CommonException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.ServletException;

public class ExceptionFilter implements Filter {

    public void destroy() {
        // TODO Auto-generated method stub
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        
        System.out.println("system : exception filter 실행");
        
        try{
            chain.doFilter(request, response);
        } catch (AuthorizationException e){
            if( request instanceof HttpServletRequest req &&
                response instanceof HttpServletResponse resp){
                resp.sendRedirect("/?error");
            }
        } catch(CommonException e){
            e.printStackTrace();
            throw e;
        }
    }
}
