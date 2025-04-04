package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forward/*")
public class B_forward extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String uri = request.getRequestURI();
        String[] uriArr = uri.split("/");
        
        switch (uriArr[uriArr.length - 1]) {
            case "servlet":
                forwardServlet(request, response);
                break;
            case "jsp":
                forwardJsp(request, response);
                break;
            default:
                sendError(request, response);
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void forwardServlet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        System.out.println("\n/forward/servlet");
        System.out.println("name : " + request.getParameter("name") );
        System.out.println("subject : " + request.getParameter("subject") );

        request.setAttribute("score", 100);
        RequestDispatcher view = request.getRequestDispatcher("/forward/jsp");
        view.forward(request, response);
    }
    
    private void forwardJsp(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        System.out.println("\n/forward/jsp : forward from /forward/servlet");
        System.out.println("name : " + request.getParameter("name"));
        System.out.println("subject : " + request.getParameter("subject"));
        System.out.println("score : " + request.getAttribute("score"));
        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/study/a_forward.jsp");
        view.forward(request, response);
    }

    private void sendError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setStatus(404);
    }
}
