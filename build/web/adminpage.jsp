<%-- 
    Document   : adminpage
    Created on : Dec 27, 2020, 12:46:35 PM
    Author     : zaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
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
          <a class="nav-link" href="#" style=" padding-left: 750px; font-weight:400px; color:black;">LogOut</a>
      </li>
     
    </ul>
  </div>
       </nav>
        <div>
            <div class="row mt-4">
                <div class="col-md-3">
                    <div class="list-group ">
                        <a href="#" class="list-group-item list-group-item-action active">
                            All
                        </a>
                        <a href="#" class="list-group-item list-group-item-action l">Details</a>
                        <a href="addcategory.jsp" id="cat" class="list-group-item list-group-item-action l">Add Category</a>
                        <a href="Addproduct.jsp"  id="pd" class="list-group-item list-group-item-action l">Add Product</a>
                        
                        
                    </div>
                </div>
                <div class="col-md-9" id="show">

                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
        <script>
            $(document).ready(function(){
                console.log("loaded")
              $('#cat').click(function(event){
                  event.preventDefault();
                  $.ajax({
                      
                      url:"addcategory.jsp",
                      
                      success:function(data,textstatus,jqXHR){
                          $('#show').html(data);
                      }
                  });
                  
                  
              });  
          });
          </script>
          
    <script>
          $(document).ready(function(){
              $('#pd').click(function(event){
                  event.preventDefault();
                  $.ajax({
                      
                      url:"Addproduct.jsp",
                      
                      success:function(data,textstatus,xyz){
                          $('#show').html(data);
                      }
                  });
                  
                  
              });  
             
            });
            
            
        </script>
            
    
    </body>
</html>
