<%-- 
    Document   : booking
    Created on : 17-Jun-2019, 11:45:00
    Author     : F.R.I.D.A.Y
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <em>Hello <%=session.getAttribute("user")%></em>
         <table border="2"> 
          <thead>
            <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Email</th>
              <th>Country</th>
              <th>Gender</th>
              <th>Tel No</th>
            </tr>
          </thead>
            <tbody>
                 <% int userid=0;int postid=0;int foreignid =100000000;
                    String user = (String)session.getAttribute("user");
                    ResultSet uid = DB.search("SELECT id FROM `locals` WHERE email='"+user+"'");
                    if (uid.next()) {userid= Integer.parseInt(uid.getString(1));}
                    ResultSet search = DB.search("SELECT id FROM `posts` WHERE `uid` ='"+userid+"'");
                    while (search.next()) {postid= Integer.parseInt(search.getString(1));}%>
                   <%ResultSet foreign = DB.search("SELECT uid FROM `bookings` WHERE `pid` = '"+postid+"'");
                    if (foreign.next()) {foreignid= Integer.parseInt(foreign.getString(1));}
                     ResultSet rs = DB.search("SELECT * FROM `foreigners` Where id='"+foreignid+"'"); 
                 while(rs.next()){ %>
                  <tr>
                    <td><% out.print(rs.getString("fname")); %></td>
                    <td><% out.print(rs.getString("lname")); %></td>
                    <td><% out.print(rs.getString("email")); %></td>
                    <td><% out.print(rs.getString("country")); %></td>
                    <td><% out.print(rs.getString("gender")); %></td>
                    <td><% out.print(rs.getString("tel")); %></td>
                     <% } %>
                  </tr>  
                    
                </tbody>
        </table>
    </body>
</html>
