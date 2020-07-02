<%-- 
    Document   : checkJsp
    Created on : 10-Jun-2019, 17:14:18
    Author     : F.R.I.D.A.Y
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Retrieve data from database in jsp</h1>
        <table border="1">
        <tr>
        <td>id</td>
        <td>Title</td>
        <td>description</td>
        <td>Image</td>

        </tr>
        <%
        try{
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/villa","root","");
        statement=connection.createStatement();
        String sql ="select * from posts";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){

        %>
        <tr>
        <td><%=resultSet.getString("id") %></td>
        <td><%=resultSet.getString("title") %></td>
        <td><%=resultSet.getString("description") %></td>
        <td><img src="data:image/jpg;base64,<%=resultSet.getString("img") %>" width="240" height="300"/></td>
        </tr>
        <%
        }
        connection.close();
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </table>
    </body>
</html>
