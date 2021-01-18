<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body
	style="width: 100vw; background-size: cover; background-position: center; background-repeat: no-repeat; overflow: hidden; height: 100vh; background-image: url('https://www.wallpaperflare.com/static/930/175/684/circles-highlights-background-form-wallpaper.jpg');">
	>

	<div>
		<nav class="navbar navbar-dark bg-dark">
			<a href="register" class="btn btn-link">Registration </a>
		</nav>
	</div>
	<div class="container" style="border-radius: 8px">
		<div class="row">
			<div class="col-md-4 col-md-offset-7">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="form-text ">
							<h3>${message}</h3>
						</div>
					</div>
					<div class="panel-body 
						style="
						padding: 15pt;  margin-top: 10%; border: 1pxsolidblack; border-radius: 8px">
						<h3 class="panel-title" style="color: white">Login Page</h3>
						<form class="form-control" method="post" role="form">
							<div class="form-group">
								<label for="username" class="col-sm-3 control-label">Username:</label>
								<div class="col-sm-9">
									<input class="form-control" placeholder="Enter your name ..."
										required="required" type="text" name="name" />
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-3 control-label">Password:</label>
								<div class="col-sm-9">
									<input class="form-control" type="password" required="required"
										placeholder="Enter your password ..." id="password"
										name="password" />
								</div>
							</div>
							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit"
										style="margin-top: 5px; margin-left: 25px"
										class="btn btn-primary">login</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>