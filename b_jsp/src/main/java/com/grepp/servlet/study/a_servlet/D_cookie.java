package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cookie/*")
public class D_cookie extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String uri = request.getRequestURI();
        String[] uriArr = uri.split("/");
        
        switch (uriArr[uriArr.length - 1]) {
            case "page":
                page(request, response);
                break;
            case "lang":
                cookie(request, response);
                break;
            default:
                sendError(request, response);
        }
        
       
    }
    
    private void cookie(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        //사용자가 검색한 프로그래밍 언어를 변수에 저장
        String search = request.getParameter("search");
        
        //이전 검색어를 미리 초기화
        String lastSearch = "최근 검색어가 없습니다.";
        
        //사용자가 검색한 프로그래밍 언어를 쿠키에 저장
        //set-cookie : 응답 헤더에 쿠키를 추가,  key=value
        response.setHeader("set-cookie", "last-search=" + search);
        
        //다시 클라이언트가 요청했을 때 요청헤더에 담겨온 lastSearch 쿠키를 확인
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie ck : cookies) {
                if (ck.getName().equals("last-search")) {
                    lastSearch = ck.getValue();
                }
            }
        }
        
        String desc = "";
        String filePath = "";
        
        switch (search) {
            case "java" :
                desc = "OOP 프로그래밍 언어";
                filePath = "/resources/img/java.png";
                break;
            case "html" :
                desc = "Hyper Text Markup Language";
                filePath = "/resources/img/html.jpg";
                break;
            case "css" :
                desc = "Cascading Style Sheet Language";
                filePath = "/resources/img/css.png";
                break;
            case "js" :
                desc = "웹페이지를 위한 스크립트 언어";
                filePath = "/resources/img/js.webp";
                break;
            default:;
        }
        
        request.setAttribute("lastSearch", lastSearch);
        request.setAttribute("search", search);
        request.setAttribute("desc", desc);
        request.setAttribute("filePath", filePath);
        request.getRequestDispatcher("/WEB-INF/views/study/c_cookie_result.jsp")
            .forward(request, response);
    }
    
    private void sendError(HttpServletRequest request, HttpServletResponse response) {
        response.setStatus(404);
    }
    
    private void page(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/c_cookie.jsp")
            .forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
}
