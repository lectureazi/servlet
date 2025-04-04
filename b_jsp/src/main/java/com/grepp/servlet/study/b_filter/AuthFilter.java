package com.grepp.servlet.study.b_filter;

import com.grepp.servlet.app.auth.Principal;
import com.grepp.servlet.app.code.Grade;
import com.grepp.servlet.infra.exception.AuthorizationException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class AuthFilter implements Filter {
    
    Map<String, List<Grade>> resourceAuthority = Map.of(
        "/member/mypage",  List.of(Grade.ROLE_USER, Grade.ROLE_ADMIN)
    );
    
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
        FilterChain filterChain) throws IOException, ServletException {
        
        System.out.println("system : auth filter 실행");
        
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession();
        
        String uri = request.getRequestURI();
        Principal principal = (Principal) session.getAttribute("principal");
        List<Grade> grades = resourceAuthority.get(uri);
        
        if(grades == null){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        
        if(principal == null || !grades.contains(principal.grade())){
            throw new AuthorizationException("접근 권한이 없습니다.");
        }
        
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
