<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.task.model.User"%>
<%@ page import="com.task.model.Task"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Task</title>
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
	style="width: 100vw; background-size: cover; background-position: center; background-repeat: no-repeat; overflow: hidden; height: 100vh; background-image: url('https://cdn.wallpapersafari.com/46/57/Q2tPqR.jpg');">
	>
	<%
	User user = (User) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("/login");
}
Task t = (Task) request.getAttribute("task");
DateFormat df = new SimpleDateFormat("YYYY-MM-D");
String sdate = df.format(t.getStartDate());
String edate = df.format(t.getEndDate());
%>
<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			 <a	class="navbar-brand btn-danger btn-lg" href="/logout">Logout</a>
		</div>
	</nav>
	<div class="container">
		<div>
			<h1>Task Form</h1>
		</div>
		<div>
			<h3>Please make Changes and save </h3>
		</div>
		<div class="card-panel">
			<form class="form-control" method="post" action="/${user.getName()}/${user.getId()}/edittask/${task.getId()}">
				<div class="mb-3">
				<label class="form-label">Task Name</label> 
				<input type="text" name="tname" value="${task.getName()}" required="required"> 
				</div>
				<div class="mb-3">
				<label class="form-label">Description</label> 
				<input type="text" name="description" value="${task.getDescription()}" required="required"> 
				</div>
				<div class="mb-3">
				<label class="form-label">Priority</label>
				<select name="priority">
					<option value="low">Low</option>
					<option value="medium">Medium</option>
					<option value="high">High</option>
				</select>
				</div>
				<div class="mb-3">
				<label class="form-label">Start Date:</label>
				<input  type="date" name="startdate" value="<%=sdate%>">
				</div>
				<div class="mb-3">
				<label class="form-label">End Date:</label>
				<input   type="date" name="enddate" value="<%=edate%>"> 
				</div>
				<input class="btn btn-primary" type="submit" value="Save">
				<button style="margin-left: 10pt;margin-top: 10pt;background-color:red" class="btn-close btn-lg" aria-label="Close"></button>
			</form>
		</div>
	</div>

	
</body>
</html>