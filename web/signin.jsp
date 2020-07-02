<%-- 
    Document   : signin
    Created on : 01-Jun-2019, 19:01:50
    Author     : F.R.I.D.A.Y
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html> 
<html lang="en" style="height:100%;">
    <head> 
        <meta charset="utf-8"> 
        <title>Tourism</title>
        
        <!-- Core CSS -->         
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet">
        <!-- Style Library -->         
        <link href="css/style-library-1.css" rel="stylesheet">
        <link href="css/plugins.css" rel="stylesheet">
        <link href="css/blocks.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->         
        <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->         
    </head>     
    <body data-spy="scroll" data-target="nav">
        <section id="content-1-3" class="content-block content-1-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="underlined-title">
                            <h1>Every service under one roof</h1>
                            <hr>
                        </div>
                        <div class="services-wrapper">
                            <div class="col-md-6">
                                <div class="icon bg-crete">
                                    <span class="fa fa-user"></span>
                                </div>
                                <h4>Foreign User</h4>
                                <a href="login_foreign.jsp">
                                    <button type="button" class="btn btn-info">Sign in</button>
                                </a>
                            </div>
                            <div class="col-md-6">
                                <div class="icon bg-finn">
                                    <span class="fa fa-university"></span>
                                </div>
                                <h4>Local User</h4>
                                <a href="login_local.jsp">
                                    <button type="button" class="btn btn-info">Sign in</button>
                                </a>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
                 
    </body>     
</html>

