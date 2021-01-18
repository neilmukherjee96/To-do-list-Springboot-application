<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.task.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Task</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
</head>
<body
	style=" background-image: url('https://cdn.wallpapersafari.com/46/57/Q2tPqR.jpg');">
	>
	<%
	User user = (User) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("/login");
}
%>
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="/<%=user.getName()%>/<%=user.getId()%>/tasks">Home</a> <a
				class="navbar-brand btn-danger btn-lg" href="/logout">Logout</a>
		</div>
	</nav>
	<div class="container">
		<div>
			<h1>Task Form</h1>
		</div>
		<div class="card text-left card-header">
			<h3>Please Add a New Task</h3>
		</div>
		<div class="card-body" style="width: 20%">
			<form class="form-control" method="post"
				action="/${user.getName()}/${user.getId()}/task">
				<div class="form-group">
					<label>Task Name</label>
					<div class="col-sm-9">
						<input required="required" type="text" name="tname"
							required="required">
					</div>
				</div>
				<div class="mb-2">
					<label>Description</label>
					<div class="col-sm-9">
						<input required="required" type="text" name="description"
							required="required">
					</div>
				</div>
				<div class="mb-2">
					<label>Priority</label>
					<div>
						<select required="required" class="form-select"
							aria-label="Default select example" name="priority">
							<option value="high">High</option>
							<option value="medium">Medium</option>
							<option value="low">Low</option>
						</select>
					</div>
				</div>
				<div class="mb-2">
					<label>Start Date:</label>
					<div>
						<input type="date" name="startdate" required="required">
					</div>
				</div>
				<div class="mb-2">
					<label>End Date:</label>
					<div>
						<input data-provide="datepicker" type="date" required="required"
							name="enddate">
					</div>
				</div>
				<input required="required" class="btn btn-success btn-lg"
					style="margin-top: 10px" type="submit" value="Create Task">
			</form>
		</div>
	</div>
</body>
</html>