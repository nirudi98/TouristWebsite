/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.foreignbean;
import java.sql.ResultSet;

/**
 *
 * @author F.R.I.D.A.Y
 */
@WebServlet(name = "signup_foreign", urlPatterns = {"/signup_foreign"})
public class signup_foreign extends HttpServlet {
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
            int count = 0;
            foreignbean cb = new foreignbean();

            cb.setFname(request.getParameter("fname"));
            cb.setLname(request.getParameter("lname"));
            cb.setEmail(request.getParameter("email"));
            cb.setCountry(request.getParameter("country"));
            cb.setPassword(request.getParameter("pwd"));
            cb.setDob(request.getParameter("dob"));
            cb.setGender(request.getParameter("g"));
            cb.setTel(request.getParameter("tel"));
            

            String fname = cb.getFname();
            String lname = cb.getLname();
            String email = cb.getEmail();
            String country = cb.getCountry();
            String password = cb.getPassword();
            String dob = cb.getDob();
            String gender = cb.getGender();
            String tel = cb.getTel();
            
            
            
            
            

            ResultSet search = DB.search("SELECT COUNT(*) FROM `foreigners`");
            if (search.next()) {
                count += Integer.parseInt(search.getString(1));
            }
            String id = "" + count;

            DB.iud("INSERT INTO `foreigners`(`id`,`fname`, `lname`, `email`, `country`, `pwd`, `dob`, `gender`, `tel`) VALUES ('"+id+"','"+fname+"','"+lname+"','"+email+"','"+country+"','"+password+"','"+dob+"','"+gender+"','"+tel+"')");
            response.sendRedirect("login_foreign.jsp");
        } catch (Exception ex) {
            PrintWriter writer = response.getWriter();
            writer.print(ex);
        }
    }
}


