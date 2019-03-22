<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Signup</title>
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



        <div class="container " style="margin-top: 5px;">
                <div class="jumbotron mt-1" style="background-color: transparent ; " >
                    <div class="container">
                        <div class="row">
                            <div class="col-2">
                            </div>
                            <div class="col-8">
                                    <div class="card" >
                                            <div class="container">
                                              <center> <h1>SignUp</h1> 
                                              <img src="images/loginlogo.png" height="20%" width="20%"/></center>
                                                    <form action="userRegistration.html" method="POST">
                                                            <div class="form-group">
                                                                    <label for="firstname">First Name</label>
                                                                    <input type="text" class="form-control" id="firstname" placeholder="First Name" name="firstName" value="${user.firstName}">
                                                             </div>
                                                             <div class="form-group">
                                                                    <label for="lasttname">Last Name</label>
                                                                    <input type="text" class="form-control" id="lastname" placeholder="Last Name" name="lastName" value="${user.lastName}">
                                                             </div>
                                                             
                                                            <div class="form-group">
                                                                     <label for="email">Email:<b style="color:red;">${error}</b></label>
                                                                     <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="${user.email}">	
                                                            </div>
                                                            <div class="form-group">
                                                                    <label for="contactnumber">Contact Number</label>
                                                                    <input type="tel" class="form-control" id="contactnumber" placeholder="Enter contact number" name="contactNumber" value="${user.contactNumber }">
                                                             </div>
                                                             
                                                             <label for="Skills">Skills: </label>
															<div class="checkbox">
															  <label><input type="checkbox" name="skills"  value="E">Electrician</label>
															</div>
															<div class="checkbox">
															  <label><input type="checkbox" name="skills" value="P">Plumber</label>
															</div>
															<div class="checkbox">
															  <label><input type="checkbox" name="skills" value="M">Mechanic</label>
															</div>
															                                                             
                                                             <div class="form-group">
                                                                  <label for="pwd">Password:</label>
                                                                 <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                                                             </div>
                                                             
                                                        <button type="submit" class="btn btn-primary">Submit</button>
                                                    </form>
                                            </div>
                                        </div>
                            </div>
                            <div class="col-2">
                                </div>	
                                
                        </div>
                    </div>
                       
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