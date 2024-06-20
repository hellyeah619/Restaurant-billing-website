<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <link href="resources/admin.css" type="text/css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Admin Login</title>
</head>
<body class="bg">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
	<form action="AdminCheck" method="post" class="form-container">
			<h1 class="header">Admin Login</h1>
  			<div class="form-group">
    			<label for="InputEmail">Email address</label>
    				<input type="email" name="email" class="form-control" id="InputEmail" placeholder="Email" required>
  			</div>
  			<div class="form-group">
    			<label for="InputPassword">Password</label>
    				<input type="password" name="password" class="form-control" id="InputPassword" placeholder="Password" required>
  			</div>
  			<button type="submit" class="btn btn-success btn-block">Submit</button>
	</form>
		</div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
</div>
</body>
</html>
