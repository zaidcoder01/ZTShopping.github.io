<%-- 
    Document   : order
    Created on : Dec 27, 2020, 7:27:02 PM
    Author     : zaid
--%>
<%@page import="Entity.User"%>
<%
    User u=  (User) session.getAttribute("cm");
    if(u==null)
    {
        response.sendRedirect("login.jsp");
        return;
    }
    
    
    %>

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
    <body style="background-image: url(img/a.jpg); background-repeat: no-repeat; background-size: cover; background-attachment:fixed; " >

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
                  
              </ul>
                  <li class="nav-item">
                      <a class="nav-link" href="logout" style="color:black;">Logout</a>
                    </li>
                <form  method="post" action="hj.jsp" class="form-inline my-2 my-lg-0" id="fmtp">
                    <input class="form-control mr-sm-2" name="searc" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="sh">Search</button>
                </form>
            </div>
        </nav>
        <%
            String t = request.getParameter("odid");
            da dp = new da(ConnectionProvider.getConnection());
            List<puser> li = dp.pcid(t);
            
          HttpSession s=request.getSession();
          s.setAttribute("za",t);
           
        %>


        <div class="container-fluid">
            <div class="row mt-4">
                <div class="col-md-6">
                    <table class="table" style="margin-top: 15px; background-color:white;">
                        <thead style="background-color: #CE93D8!important;">
                            <tr>
                                <%  for (puser p : li) {
                                %>
                                <th scope="col">Img</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Description</th>

                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                <td scope="col"><img src="img/pic/<%=p.getPimg()%>" style= "max-height:60px; max-width: 90px; width: auto;" ></td>
                                <td scope="col"><%=p.getPname()%></td>
                                <td scope="col"><%=p.getPprice()%></td>
                                <td scope="col"><%=p.getPdes()%></td>
                            </tr>
                        </tbody>
                    </table>
                    <% }%>
                </div>
                <div class="col-md-6">

                    <div class="row mt-4">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" style="background-color: #CE93D8!important;">
                                    <h3>Place Order</h3>
                                </div>
                                <div class="card-body">
                                    <form post="post" action="od" id="fmt">
                                        <div class="form-group">
                                            <label for="catn">Email Id</label>
                                            <input type="email" class="form-control" name="mail"  value=" <%= u.getEmail()%> " aria-describedby="emailHelp" placeholder="enter Email" readonly>

                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Mobile No</label>
                                            <input type="text"class="form-control" name="num"  placeholder="enter mobile no" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Shipping Address</label>
                                            <textarea class="form-control" name="add"  placeholder="enter address" required></textarea>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                        </div>


                                </div>
                                <div class="card-footer" style="background-color: #FFF9C4!important;">
                                    <div class="text-center">
                                        <button type="submit" class=" btn btn-outline-success">Submit</button>
                                        <button type="reset" class=" btn btn-outline-danger">Reset</button>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>

                </div>

            </div>


        </div>
    </div>

</div>




<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>




<script>
    $(document).ready(function(){
       console.log("loaded....");
      
            $('#fmt').on('submit',function(event){
                 event.preventDefault();
           let form= new FormData(this);
           
           $.ajax({
               
               url: "od",
               type: 'post',
               data: form,
               success:function(data,textstatus,jqXHR){
                   console.log(data);
                alert("done");
                     
               },
               error: function(jqXHR,textstatus,errorThrown){
                   console.log(jqXHR);
                     alert("error");
               },
               processData: false,
               contentType: false
               
               
           });
           
       });
    });
    
</script>

</body>
</html>
