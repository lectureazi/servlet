package com.grepp.servlet.study.c_listener;

import com.grepp.servlet.infra.db.JdbcTemplate;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;

@WebListener
public class a_listener implements ServletContextListener, HttpSessionAttributeListener {
 
	private ServletContext context;
    
    public void contextInitialized(ServletContextEvent arg0)  {
        context = arg0.getServletContext();
        context.setAttribute("sessionCnt", 0);
        
        JdbcTemplate.init("jdbc:mysql://localhost:3306/jdbc?useUnicode=true&characterEncoding=utf8"
            ,"jdbc", "123qwe!@#");
    }
	
    public void attributeAdded(HttpSessionBindingEvent arg0)  {
    	if(arg0.getName().equals("principal")) {
    		int count = (int)context.getAttribute("sessionCnt");
            context.setAttribute("sessionCnt", ++count);
    	}
    }

    public void attributeRemoved(HttpSessionBindingEvent arg0)  {
    	if(arg0.getName().equals("principal")) {
	         int count = (int) context.getAttribute("sessionCnt");
	         context.setAttribute("sessionCnt", --count);
    	}
    }
}
