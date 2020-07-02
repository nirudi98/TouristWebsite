<%-- 
    Document   : signup_local
    Created on : 01-Jun-2019, 19:05:17
    Author     : F.R.I.D.A.Y
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Local signup
        </title>
        
        <style>
            body{
                background: url('img/img-03.jpeg');
                background-size:cover;
                font-family: Arial;
            }
            .wrap{
                max-width: 350px;
                margin: auto;
                padding: 20px;
                background: #fff;
                margin-top: 100px;
                border-radius:20px;
            }
            form{
                margin-top: 15px;
            }
            input{
                width: 100%;
                padding: 10px;
                box-sizing: border-box;
                margin-bottom: 10px;
                border: none;
                outline:none;
                border:1px solid gray;
                font-size: 15px;
                border-radius: 5px;
            }
            select{
                width:30%;
                font-size: 15px;
                border-radius: 5px;
                border:1px solid gray;
                height: 40px;
            }
            h2{
                margin: 0;
                padding: 0;
                font-size: 2em;
                text-align: center;
            }
            input[type=submit]{
                font-size: 16px;
                margin-top:3px;
                color: #fff;
                font-weight: bold;
                background: #cc0033;
                border:1px solid #fff;
                cursor :pointer;
            }
            input[type=submit]:hover{
                background: orange;
            }
            .openbtn{
                background:#f1f1f1;
                border:none;
                padding: 10px 15px;
                font-size: 20px;
                cursor:pointer;
                float:right;
            }
            .openbtn:hover{
                background: #bbb;
            }
            .overlay{
                height:100%;
                width:100%;
                position:fixed;
                z-index: 1;
                top:0;
                left:0;
                background: rgba(0,0,0, 0.7);
            }
            .closebtn:hover{
                color: #ccc;
            }
            #date{
                width:20%;
            }
            #gender{

                display: inline-block;
                width:5%;
                
            }
            #check{
                display: inline-block;
                width:5%;
            }
            #users{
                display:inline-block;
                widows: 100px;
                height: 100px;
                padding-left: 100px;
            

            }
        </style>
    </head>
    <body>
        <div id="myOverlay" class="overlay">
            <div class ="wrap">
                <h2>Sign Up Here</h2>
                <img src ="img/users.jpg"id="users"> 
                <form name="signup_local" action="signup_local" method="POST">
                    <input type="text" placeholder="Enter First Name" name ="fname">
                    <input type="text" placeholder="Enter last Name" name ="lname">
                    <input type="text" placeholder="Enter Email" name ="email">
                    <input type="text" placeholder="Enter NIC" name ="nic">
                    <input type="password" placeholder="Enter Password" id="password01" name ="pwd">
                    <input type="text" placeholder="Re-Enter Password" id="password02" name ="rpwd">
                    <input type="date" name ="dob" value="date" placeholder="Enter your DOB">

                    Gender:&nbsp;<input type="radio" name="g" value="male"  id=gender> Male &nbsp;

                    <input type="radio" name="g" value="female" id=gender> Female &nbsp;

                    <input type="radio" name="g" value="other" id=gender> Other

                    <input type="text" placeholder="Telephone Number" id="telenum"onclick="numericalValidation()" name ="tel">

                    Confirm Submission:<input type="checkbox" id="check">

                  <input type="Submit" value="Join Now" onclick="validation()">
                </form>
            </div>
        </div>
        <script>
            function openForm(){
               
                document.getElementById("myOverlay").style.display="block";

            }
        </script>
            <script>
                function validation(){

                var password1=document.getElementById("password01").value;
                var password2=document.getElementById("password02").value;

                if(password1!==password2){
                     alert("passwords do not match");
                }
                
            </script>
            <script>
                function numericalValidation(){
                    var Telephone=document.getElementById("telenum").value;
                    var patt = /^\d{3}-\d{7}$/;
                    
                    
                    if(patt.test(Telephone)){
                        confirm("correct");
                    }
                    else{
                        alert("Wrong");
                    }
                }
            
            </script>
    </body>
</html>
