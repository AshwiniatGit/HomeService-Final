<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Service</title>
     <link rel="stylesheet" href="resources/styles.css"/>	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
</head>
<body>
 
    <nav class="navbar navbar-expand-sm  navbar-dark" style="background-color: black">
        <!-- Brand/logo -->
        
        <a class="navbar-brand" href="#">
          <img src="images/home.jpg" alt="logo" style="height:60px;width:110px">
        </a>
        
        <!-- Links -->
        <ul class="navbar-nav ">
          <li class="nav-item">
              <input type="search" placeholder="Search"  class="search"><i id="nav_search_icon" class="fa fa-search"></i>
          </li>
        
          <div class="float-right">
          <li class="nav-item">
              <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal1" class="loginbtn" style="float:right; margin:15px" >
                    Login as Admin
                </button>
           </li>
          <li class="nav-item ">
              <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal2" class="loginbtn" style="float:right; margin:15px" >
                  Login as User
              </button>
          </li>
          <li class="nav-item ">
              <select style="float:right; margin:15px" class="loginbtn">
                  <option selected disabled >Search location</option>
                  <option >Hinjawadi</option>
                  <option >Baner</option>
                  <option >Pune</option>
                  <option >Wakad</option>
              </select>
          </li>
        </div>
        </ul>
      </nav>



<!-- The Modal -->
<div class="modal" id="myModal1" style="margin-top: 200px;">
  <div class="modal-dialog">
    <div class="modal-content">
    
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Admin Login</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
      <!-- Modal body -->
      <div class="modal-body">
            <div class="container">
                    <form action="adminLogin.html" method="POST">
                        <div class="form-group">
                             <label for="email">Email:</label>
                             <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                         </div>
                         <div class="form-group">
                             <label for="pwd">Password:</label>
                             <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                         </div>
                         <div class="form-group form-check">
                               <label class="form-check-label">
                               <input class="form-check-input" type="checkbox" name="remember"> Remember me
                               </label>
                          </div>
                         <button type="submit" class="btn btn-primary">Login</button>
                    </form>
             </div>
      </div>
      
      <!-- Modal footer -->
      <div class="modal-footer">
        <a  class="btn btn-primary" href="signUp.html" >Sign Up?</a>
      </div>
      
    </div>
  </div>
</div>

<div class="modal" id="myModal2" style="margin-top: 200px;">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">User Login</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
              <div class="container">
                      <form action="userLogin.html" method="POST">
                          <div class="form-group">
                               <label for="email">Email:</label>
                               <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                           </div>
                           <div class="form-group">
                               <label for="pwd">Password:</label>
                               <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                           </div>
                           <div class="form-group form-check">
                                 <label class="form-check-label">
                                 <input class="form-check-input" type="checkbox" name="remember"> Remember me
                                 </label>
                            </div>
                           <button type="submit" class="btn btn-primary">Login</button>
                      </form>
               </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
                <a  class="btn btn-primary" href="userRegistration.html" >Sign Up?</a>
        </div>
        
      </div>
    </div>
  </div>
  
      
   



<div style="width:100%; "  >
<div id="demo" class="carousel slide" data-ride="carousel" >
    
      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>
      
      <!-- The slideshow -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="images/homeService.jpg"  alt="Los Angeles" width="100%" height="750">
        </div>
        <div class="carousel-item">
          <img src="images/homeService2.jpg"  alt="Chicago" width="100%" height="750">
        </div>
        <div class="carousel-item">
          <img src="images/homeService3.jpg"  alt="New York" width="100%" height="750">
        </div>
      </div>
      
      <!-- Left and right controls -->
      <a class="carousel-control-prev"  href="#demo"data-slide="prev">
        <span  class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
</div>


<footer class="footer">
    <div style="float: right;margin:20px">
        <i class="fa fa-twitter fa-2x"></i>
        <i class="fa fa-facebook fa-2x"></i>
        <i class="fa fa-instagram fa-2x"></i>
        <h6> &copy; HomeService</h6>
        </div>
</footer>


    
</body>
</html>