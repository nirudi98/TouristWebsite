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
@WebServlet(name = "login_admin", urlPatterns = {"/login_admin"})
public class login_admin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            loginbean ub = new loginbean();
            ub.setEmail(request.getParameter("admin"));
            ub.setPassword(request.getParameter("password"));
            
            String pass = ub.getPassword();
            String user= ub.getEmail();
            Cookie loginCookie = new Cookie("user",user);
            loginCookie.setMaxAge(30*60);
            response.addCookie(loginCookie);
            
            String sql = "SELECT * FROM `admin` WHERE `uname` ='"+user+"' AND `pwd` = '"+pass+"'";
            ResultSet search = DB.search(sql);
            if (search.next()) {

                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                response.sendRedirect("admin.jsp?message=Hello+" + user + "");
                
            } else {
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin_login.jsp?message=<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
            }
        } catch (Exception ex) {
             PrintWriter out = response.getWriter();
             out.print(ex);
        }
    }



}
