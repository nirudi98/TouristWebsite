<%-- 
    Document   : user_admin
    Created on : 04-Jun-2019, 08:07:51
    Author     : F.R.I.D.A.Y
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Villa user admin panel</title>
  <link href="Content/bootstrap.css" rel="stylesheet" />
  
  <script src="Scripts/jquery-1.11.0.min.js"></script>
  <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="list-group">
          <em>Hello <%=session.getAttribute("user")%></em>
          <h1>Admin panel for your profile</h1><br><br>
          <a class="list-group-item" href="AddPost.jsp">Add Posts to your profile</a>
          <a class="list-group-item" href="DeletePost.jsp">Delete Posts to your profile</a>
          <a class="list-group-item" href="EditPost.jsp">Edit Posts to your profile</a>
          <a class="list-group-item" href="booking.jsp">Check Bookings</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>