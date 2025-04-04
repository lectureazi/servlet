package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/redirect/*")
public class C_redirect extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String uri = request.getRequestURI();
        String[] uriArr = uri.split("/");
        
        switch (uriArr[uriArr.length - 1]) {
            case "page":
                page(request, response);
                break;
            case "signup":
                signup(request, response);
                break;
            default:
                sendError(request, response);
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void page(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/study/b_redirect.jsp")
        .forward(request, response);
    }
    
    private void signup(HttpServletRequest request, HttpServletResponse response)
        throws IOException {
        System.out.println("email : " + request.getParameter("email") );
        System.out.println("password : " + request.getParameter("password") );
        System.out.println("phone : " + request.getParameter("phone") );
        
        response.sendRedirect("/");
    }
    
    private void sendError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setStatus(404);
    }
    
}
