/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.loginbean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author F.R.I.D.A.Y
 */
@WebServlet(name = "login_foreign", urlPatterns = {"/login_foreign"})
public class login_foreign extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            loginbean ub = new loginbean();
            ub.setEmail(request.getParameter("email"));
            ub.setPassword(request.getParameter("pass"));
            
            String pass = ub.getPassword();
            String email= ub.getEmail();
            Cookie loginCookie = new Cookie("user",email);
            loginCookie.setMaxAge(30*60);
            response.addCookie(loginCookie);
            
            String sql = "SELECT * FROM `foreigners` WHERE `email` ='"+email+"' AND `pwd` = '"+pass+"'";
            ResultSet search = DB.search(sql);
            if (search.next()) {

                HttpSession session = request.getSession(true);
                session.setAttribute("user", email);
                response.sendRedirect("foreignindex.jsp?message=Hello+" + email + "");
                
            } else {
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/login_foreign.jsp?message=<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
            }
        } catch (Exception ex) {
             PrintWriter out = response.getWriter();
             out.print(ex);
        }

    }

}
