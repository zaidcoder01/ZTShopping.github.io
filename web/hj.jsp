<%-- 
    Document   : hj
    Created on : Dec 27, 2020, 6:12:34 PM
    Author     : zaid
--%>

<%@page import="java.util.List"%>
<%@page import="Entity.puser"%>
<%@page import="helper.ConnectionProvider"%>
<%@page import="dao.da"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>JSP Page</title>
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
        <a class="nav-link" href="#">Login</a>
      </li>
    </ul>
      <form  method="post" action="hj.jsp" class="form-inline my-2 my-lg-0" id="fmtp">
      <input class="form-control mr-sm-2" name="searc" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="sh">Search</button>
    </form>
  </div>
</nav>
       
        <div class="container-fluid mt-4" >
            <%
                String y= request.getParameter("searc");
                da dp=new da(ConnectionProvider.getConnection());
                List<puser> li=dp.pci(y);
                
                
                %>
            <div class="row mt-2">
                <div class="col-md-12  text-center">
                    <div class="card-columns">
                          <%
                                for(puser p:li){
                                %>
                        <div class="card">
                            <div class="text-center">
                                <img src="img/pic/<%=p.getPimg() %>" class="card-img-top" alt="" style="max-height:100px; max-width:330px; width:auto;">
                            </div>
                            <div class="card-body">
                                <div class="card-title"><%=p.getPname() %></div>
                                <div class="card-text"><%=p.getPdes()%></div>
                            </div>
                            <div class="card-footer">
                                   <button type="button" class=" btn" style="background-color: lightgoldenrodyellow; font-weight: bold; border-color: black;">&#8377;<%= p.getPprice()%></button>
                                <a class=" btn btn-primary" href="order.jsp?odid=<%=p.getPname() %>"> Order</a>
                               
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>
                
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        
    </body>
</html>
