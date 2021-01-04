<%-- 
    Document   : addcategory
    Created on : Dec 27, 2020, 1:19:28 PM
    Author     : zaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>

        <div style="padding-left: 50px; padding-top: 3px;">
        <div class="row">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header" style="background-color: #CE93D8!important;">
                        <h3>Add Category</h3>
                    </div>
                    <div class="card body">
                        <form method="post" action="catser" id="fmtl">
                            <div class="form-group">
                                <label for="catn">Category Name</label>
                                <input type="text" class="form-control" name="catname" aria-describedby="emailHelp" placeholder="Enter Catergory Name">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Description</label>
                                <textarea class="form-control" name="des"  placeholder="Description"></textarea>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                             <button type="submit" class=" btn btn-outline-success" id="bu">Submit</button>
                        </form>
                    </div>
<!--                    <div class="card-footer" style="background-color: #FFF9C4!important;">
                        <div class="text-center">
                           
                        <button type="reset" class=" btn btn-outline-danger">Reset</button>
                        </div>
                    </div>-->
                </div>
                
            </div>
        </div>

        </div>





        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
    <script>
    $(document).ready(function(){
   
         $('#fmtl').on('submit',function(event){
                 event.preventDefault();
           let ty= new FormData(this);
           
           $.ajax({
               
               url: "catser",
               type: 'post',
               data: ty,
               success:function(data,textstatus,xyz){
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
