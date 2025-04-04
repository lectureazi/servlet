package com.grepp.servlet.app;

import com.grepp.servlet.app.auth.Principal;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member/*")
public class MemberController extends HttpServlet {
    
    private final MemberService memberService = MemberService.getInstance();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String uri = req.getRequestURI();
        String[] uriArr = uri.split("/");
        
        System.out.println(uri);
        
        switch (uriArr[uriArr.length - 1]) {
            case "login":
                page(req, resp);
                break;
            case "logout":
                logout(req, resp);
                break;
            case "mypage":
                mypage(req, resp);
                break;
            default:
                sendError(req, resp);
        }
    }
    
    private void mypage(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/member/mypage.jsp")
            .forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        String uri = req.getRequestURI();
        String[] uriArr = uri.split("/");
        
        switch (uriArr[uriArr.length - 1]) {
            case "login":
                login(req, resp);
                break;
            default:
                sendError(req, resp);
        }
    }
    
    private void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("principal");
        resp.sendRedirect("/");
    }
    
    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
        Principal principal = memberService.authenticate(username, password);
        HttpSession session = req.getSession();
        session.setAttribute("principal", principal);
        resp.sendRedirect("/");
    }
    
    private void page(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/member/error.jsp")
            .forward(req, resp);
    }
    
    private void sendError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setStatus(404);
    }
}
