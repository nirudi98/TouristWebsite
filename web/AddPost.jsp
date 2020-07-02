<%-- 
    Document   : AddPost
    Created on : 04-Jun-2019, 08:05:16
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
  <form name = "addPost" action="addPost" method="POST" enctype="multipart/form-data">
  <em><%=session.getAttribute("user")%></em>
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <h2>Add Posts</h2>
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
            <div class="form-group">
              <label for="url">
                Image
              </label>
              <input type="file"  value="upload your image" id="file" name="file"/>
            </div>
          </div>
          <div class="panel-footer">
            <div class="row">
              <div class="col-xs-12">
                <input type="submit" id="updateButton" class="btn btn-primary" value="Add">
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

