package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class E_Cache
 */
@WebServlet("/cache")
public class F_Cache extends HttpServlet {
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        //해당 응답은 캐시에 저장하지 않는다.
        // response.setHeader("cache-control", "no-store");
        response.setHeader("content-disposition", "attachment; filename=flower1.PNG");
        request.getRequestDispatcher("/resources/img/flower1.PNG")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doGet(request, response);
    }
    
}
