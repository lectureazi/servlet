package com.grepp.servlet.study.a_servlet;

import com.grepp.servlet.app.auth.Principal;
import com.grepp.servlet.app.code.Grade;
import com.grepp.servlet.infra.exception.CommonException;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;

@WebServlet("/session/*")
public class E_Session extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String[] uriArr = request.getRequestURI().split("/");
        switch (uriArr[uriArr.length - 1]) {
            case "page":
                page(request, response);
                break;
            case "login":
                login(request, response);
                break;
            default:
                sendError(request, response);
                break;
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void page(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/study/d_session.jsp")
            .forward(request, response);
    }
    
    private void login(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        HttpSession session = request.getSession();
        
        Principal principal = new Principal(username, Grade.ROLE_USER, LocalDateTime.now());
        session.setAttribute("principal", principal);
        
//        session.setAttribute("username", username);
//        response.setHeader("set-cookie",
//            "JSESSIONID=" + session.getId() + "; max-age=3600; path=/");
    
        response.sendRedirect("/");
    }
    
    private void sendError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setStatus(404);
    }
    
    
}
