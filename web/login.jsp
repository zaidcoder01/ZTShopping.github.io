<%-- 
    Document   : login
    Created on : Jan 2, 2021, 12:07:31 PM
    Author     : zaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-image: url(img/a.jpg); background-repeat: no-repeat; background-size: cover; background-attachment:fixed; ">

        <nav class="navbar navbar-expand-lg navbar-light l">
            <a class="navbar-brand" href="#" style="font-size:35px; font-weight:bold;">Z&T SHOPPING</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                      

                </ul>
            </div>
        </nav>



        <div class="container">
            <div class="row mt-4">
                <div class="col-md-4 offset-4">
                    <div class="card" style="background-color: rgba(0,0,0,0.2); color: white; font-weight:bold; ">
                        <div class="card-header" style="background-color: #CE93D8;">
                            <p style="text-align: center;font-size:25px; font-weight: bold; color: blue;">Login</p>
                        </div>
                        <div class="card-body">
                            <form method="post" action="log" id="fmtl">
                                <div class="form-group">
                                    <label for="nam">Email</label>
                                    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>

                                </div>
                                <div class="form-group">
                                    <label for="nam">Password</label>
                                    <input type="password" class="form-control" name="pass" aria-describedby="emailHelp" placeholder="Enter password" required>

                                </div>

                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    <a class="nav-link" href="signup.jsp" style="font-size: 20px; line-height: 13px; color: white;">Sign-up</a>
                                </div>
                                <button type="submit" class=" btn btn-success" id="bu">Submit</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>






    </body>
</html>
