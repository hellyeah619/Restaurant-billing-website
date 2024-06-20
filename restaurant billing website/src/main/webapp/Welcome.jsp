<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="resources/button.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .head-text {
    color:#1c79c0;
    font-family: Lobster;
    font-size: 200px;
  }
  .subhead-text{
    color:#1c79c0;
    font-family: Lobster;
    font-size: 70px;}
</style>

      <link rel="stylesheet" href="resources/style.css">
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<script src='https://cdn.rawgit.com/Siddharth11/gradStop.js/master/gradstop.js'></script>

  

    <script  src="resources/index.js"></script>


<div class="background">
 

<div class="jumbotron">
  <div class="container text-center">
    <div class="head-text">Delicious</div>      
    <div class="subhead-text">Naturally Satisfying, Every Time</div>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="Logout.jsp"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
        <li><a href="Cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      </ul>
    </div>
  </div>
</nav> 
<p id="demo">
<script>
/* function confirmBox() {
    	var qty = prompt("Please enter quantity", 1);
        var xhttp = new XMLHttpRequest();
    	xhttp.open("GET", "AddToCart.jsp?qty="+qty+"\"", true);
    	xhttp.send();
    		} */
</script></p>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chicken Biryani</div>
        <div class="panel-body"><img src="resources/chickenBiryani.jpg" class="img-responsive" style="height:195px; width:100%" alt="Chicken Biryani"></div>
        <div class="panel-footer">Rs. 400</div>
       <a href="AddToCart.jsp?p=1"><button class="button" style="vertical-align:middle" id="1" ><!-- onclick="confirmBox()" --><span>Add to cart </span></button></a>
       
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Vegetable Pulao</div>
        <div class="panel-body"><img src="resources/veg_biryani.jpeg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 200</div>
        <a href="AddToCart.jsp?p=2"><button class="button" style="vertical-align:middle" id="2" ><!-- onclick="confirmBox()" --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Chicken Arabiata Pasta</div>
        <div class="panel-body"><img src="resources/Chicken_pasta.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 350</div>
        <a href="AddToCart.jsp?p=3"><button class="button" style="vertical-align:middle" id="3"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Mushroom Penne Pasta</div>
        <div class="panel-body"><img src="resources/Mushroom_pasta.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 280</div>
        <a href="AddToCart.jsp?p=4"><button class="button" style="vertical-align:middle" id="4"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chicken Barbeque Pizza</div>
        <div class="panel-body"><img src="resources/Chicken_Pizza.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 350</div>
        <a href="AddToCart.jsp?p=5"><button class="button" style="vertical-align:middle" id="5"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Farmhouse Vegetable Pizza</div>
        <div class="panel-body"><img src="resources/Veg_Pizza.jpeg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 230</div>
        <a href="AddToCart.jsp?p=6"><button class="button" style="vertical-align:middle" id="6"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Caesar Salad</div>
        <div class="panel-body"><img src="resources/Caesar_Salad.jpeg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="AddToCart.jsp?p=7"><button class="button" style="vertical-align:middle" id="7"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Chocolate Mousse</div>
        <div class="panel-body"><img src="resources/Choco_Mousse.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 250</div>
        <a href="AddToCart.jsp?p=8"><button class="button" style="vertical-align:middle" id="8"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Rasgulla</div>
        <div class="panel-body"><img src="resources/Rasgulla.JPG" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 50</div>
        <a href="AddToCart.jsp?p=9"><button class="button" style="vertical-align:middle" id="9"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Lemon Iced Tea</div>
        <div class="panel-body"><img src="resources/Iced_tea.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 100</div>
        <a href="AddToCart.jsp?p=101"><button class="button" style="vertical-align:middle" id="101"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Lassi</div>
        <div class="panel-body"><img src="resources/lassi.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 80</div>
        <a href="AddToCart.jsp?p=102"><button class="button" style="vertical-align:middle" id="102"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Cold Drink</div>
        <div class="panel-body"><img src="resources/coke.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 40</div>
        <a href="AddToCart.jsp?p=103"><button class="button" style="vertical-align:middle" id="103"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p></p>  
  
</footer>
</div>
</body>
</html>
