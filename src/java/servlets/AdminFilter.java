/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.UserBean;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author elmahask
 */
@WebFilter(filterName = "AdminFilter",urlPatterns = {"/ec-add-product.jsp","/ec-product-List.jsp"
        ,"/ec-users.jsp","/ec-dashboard.jsp","/ec-recent-orders.jsp"})
public class AdminFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
         UserBean user = (UserBean) ((HttpServletRequest) request).getSession().getAttribute("adminObj");
       // User user = new User();
       /// /////////////////   user = null 
         if (user != null ) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse) response).sendRedirect("/Marketo/404.jsp");
        }

    }

    @Override
    public void destroy() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
