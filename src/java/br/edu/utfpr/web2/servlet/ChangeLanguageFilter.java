/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.web2.servlet;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Locale;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.jstl.core.Config;

/**
 *
 * @author rod_v
 */
@WebFilter(urlPatterns = {"/*"})
public class ChangeLanguageFilter implements Filter {
    
 
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        String language = ((HttpServletRequest)request).getParameter("language");
        chain.doFilter(request,response);
        
    }
    /**
     * Destroy method for this filter
     */
    public void destroy() {        
    }

    public void init(FilterConfig filterConfig) throws ServletException {        
    
    }
   
}
