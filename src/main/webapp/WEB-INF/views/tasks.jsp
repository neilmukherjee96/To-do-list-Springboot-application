<%@page import="com.task.model.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.task.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tasks</title>
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
%>
	<div>
		<div>
			<nav class="navbar navbar-dark bg-dark">
				<div class="container-fluid">
					<a class="btn btn-danger bt-lg" class="navbar-brand" href="/logout">Logout</a>
				</div>
			</nav>
			<div class="container">
				<div>
					<div></div>
					<div style="width:10%">
						<h1 style="text-align:center; background-color:black; color: red">Tasks</h1>
					</div>
					<div style="width:20%">
						<h3 style ="text-align:center;color:red; background-color:black">
							Welcome <span style="text-transform: capitalize;">${user.getName()}</span>
						</h3>
					</div>
					<div>
						<a class="btn-primary btn-lg" style="color: white"
							href="/${user.getName()}/${user.getId()}/addtask"> Add Task</a>
					</div>
					<div>
						<table class="table table-bordered table-striped table-light"
							style="margin-top: 10pt; width: 60%; text-align: center">
							<tr class="table-info" style="border: 1px solid">
								<th style="border: 1px solid">Task Name</th>
								<th style="border: 1px solid">Description</th>
								<th style="border: 1px solid">Priority</th>
								<th style="border: 1px solid">Start Date</th>
								<th style="border: 1px solid">End Date</th>
								<th style="border: 1px solid" colspan="2">Update Task</th>
							</tr>
							<%
								@SuppressWarnings("unchecked")
							List<Task> tasks = (List<Task>) session.getAttribute("tasks");
							for (Task t : tasks) {
							%>
							<tr style="text-align: center; border: 1px solid; width: 30%">
								<td style="padding: 10pt; border: 1px solid; width: 30%"><%=t.getName()%></td>
								<td style="padding: 10pt; border: 1px solid"><%=t.getDescription()%></td>
								<td style="padding: 10pt; border: 1px solid"><%=t.getPriority()%></td>
								<td style="padding: 10pt; border: 1px solid"><%=t.getStartDate().toString().substring(0, 10)%></td>
								<td style="padding: 10pt; border: 1px solid"><%=t.getEndDate().toString().substring(0, 10)%></td>
								<td style="padding: 10pt; border: 1px solid"><button
										class="btn-warning">
										<a
											href="/${user.getName()}/${user.getId()}/edittask/<%= t.getId()%>">Edit</a>
									</button></td>
								<td style="padding: 10pt; border: 1px solid"><button
										class="btn-danger">
										<a
											href="/${user.getName()}/${user.getId()}/deletetask/<%= t.getId()%>">Delete</a>
									</button></td>
							</tr>
							<%
								}
							;
							%>
						</table>
					</div>
				</div>
			</div>
</body>
</html>