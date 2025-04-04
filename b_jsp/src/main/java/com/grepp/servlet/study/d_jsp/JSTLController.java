package com.grepp.servlet.study.d_jsp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/jstl/*")
public class JSTLController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] uriArr = request.getRequestURI().split("/");
        switch (uriArr[uriArr.length -1]) {
            case "page":
                page(request, response);
                break;
            default : response.setStatus(404);
        }
    }
    
    private void page(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String xss = "<script>alert('xss attack!')</script>";
        request.setAttribute("xss", xss);
        request
            .getRequestDispatcher("/WEB-INF/views/jstl.jsp")
            .forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
