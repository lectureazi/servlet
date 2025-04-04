package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

// 1) * : 모든
//		ex) /request/* : /request 로 시작하는 모든 요청
//		ex) *.com : .com 으로 끝나는 모든 요청
@WebServlet("/request/*")
public class A_Base extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String uri = request.getRequestURI();
        String[] uriArr = uri.split("/");
        
        switch (uriArr[uriArr.length - 1]) {
            case "get":
                testGet(request, response);
                break;
            case "post":
                testPost(request, response);
                break;
            default:
                sendError(request, response);
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void testGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String subject = request.getParameter("subject");
        response.setHeader("content-type", "text/html; charset=utf-8");
        
        PrintWriter pw = response.getWriter();
        pw.write("<h1>Get 방식 요청입니다.</h2>");
        pw.write("<h1>" + subject + " 공부를 시작합니다.</h1>");
    }
    
    private void testPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String subject = request.getParameter("subject");
        response.setHeader("content-type", "text/html; charset=utf-8");
        PrintWriter pw = response.getWriter();
        pw.write("<h1>Post 방식 요청입니다.</h2>");
        pw.write("<h1>" + subject + " 공부를 시작합니다.</h1>");
    }
    
    private void sendError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setStatus(404);
    }
    
    
}
