<%-- 
    Document   : EditPosts
    Created on : 04-Jun-2019, 08:08:53
    Author     : F.R.I.D.A.Y
--%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.DB"%>
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
 <form name = "editPost" action="editPost" method="POST">
     <em>Hello <%=session.getAttribute("user")%></em>
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <h2>Edit Posts</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <table id="productTable"
               class="table table-bordered table-condensed table-striped">
          <thead>
            <tr>
              <th>Post ID</th>
              <th>Post Title</th>
              <th>Post Description</th>
              <th>Image</th>
            </tr>
          </thead>
            <tbody>
                 <% int userid = 0;
            String name =(String)session.getAttribute("user");
            ResultSet uid = DB.search("SELECT id FROM `locals` WHERE email='"+name+"'");
            if (uid.next()) {
                userid= Integer.parseInt(uid.getString(1));
            }
            ResultSet rs = DB.search("SELECT * FROM `posts` WHERE uid ='"+userid+"'"); 
                 while(rs.next()){ %>
                  <tr>
                    <td><% out.print(rs.getString("id")); %></td>
                    <td><% out.print(rs.getString("title")); %></td>
                    <td><% out.print(rs.getString("description")); %></td>


                     <% } %>
                  </tr>  
                </tbody>
        </table>
      </div>
    </div>

    <div class="row">
      <div class="col-sm-6">
        <div class="panel panel-primary">
          <div class="panel-heading">
            Posts Information
          </div>
          <div class="panel-body">
              <div class="form-group">
              <label for="productname">
                Post ID
              </label>
              <input type="text" class="form-control" value="ID" id="Title" name="ID"/>
            </div>
            <div class="form-group">
              <label for="productname">
                Post Title
              </label>
              <input type="text" class="form-control" value="Title" id="Title" name="Titles"/>
            </div>
            <div class="form-group">
              <label for="introdate">
                Post Description
              </label>
              <input type="text" class="form-control" value="Description" id="Description" name="Description"/>
            </div>
          </div>
          <div class="panel-footer">
            <div class="row">
              <div class="col-xs-12">
                <Input type="submit" id="updateButton" class="btn btn-primary" value="Add">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </form>
</body>
</html>
