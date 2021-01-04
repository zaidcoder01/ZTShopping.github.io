<%-- 
    Document   : Addproduct
    Created on : Dec 27, 2020, 1:58:36 PM
    Author     : zaid
--%>

<%@page import="java.util.List"%>
<%@page import="Entity.Catuser"%>
<%@page import="helper.ConnectionProvider"%>
<%@page import="dao.da"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
       
        <div style="padding-left: 40px; padding-top: 0px;">
        <div class="row">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header" style="background-color: #CE93D8!important;">
                        <h3>Add Product</h3>
                    </div>
                    <div class="card body">
                        <form method="post" action="pser" id="fmt" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="pdcat">Product Category</label><br>
                                <select name="pdcat" class="form-control">
                                    <%
                                        da dao=new da(ConnectionProvider.getConnection());
                                       List<Catuser> list= dao.getcat();
                                        
                                           for(Catuser c:list){
                                        %>
                                        <optgroup>Select</option>
                                    <option><%= c.getCtitle()%></option>
                                    
                                    <%  }%>
                                    
                                </select>
                                
                            </div>
                            <label for="pdname">Product Name</label>
                                <input type="text" class="form-control" name="pdname" aria-describedby="emailHelp" placeholder="Enter Catergory Name">
                                
                            
                            <div class="form-group">
                                <label for="pdprice">Product Price</label>
                                <input type="text" class="form-control" name="pdprice" aria-describedby="emailHelp" placeholder="Enter Catergory Price">
                                
                            </div>
                            <div class="form-group">
                                <label for="pdes">Description</label>
                                <textarea class="form-control" name="pdes"  placeholder="Description"></textarea>
                            </div>
                                <div class="form-group">
                                <label for="pdpic">Product Image</label>
                                <input type="file" class="form-control" name="pdpic" aria-describedby="emailHelp" placeholder="Select Image">
                                
                            </div>
                            
                            
                        
                    
                  
                        <div class="text-center" >
                        <button type="submit" class=" btn btn-outline-success">Submit</button>
                        <button type="reset" class=" btn btn-outline-danger">Reset</button>
                        </div>
                                    </form>
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
               
               url: "pser",
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
