<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
	
	<title>INDEX IN JSP</title>
	
	<link href="asets/css/bootstrap.min.css" rel="stylesheet">
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Spring Boot</a>
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-task">Create Task</a></li>
					<li><a href="all-tasks">All Task</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME' }">
			<div class="container" id="hoeDiv">
				<div class="jumbotron test-center">
					<h1>Home Div</h1>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode == 'MODE_TASKS' }">
			<div class="container text-center" id="taskDiv">
				<h3>Task</h3>
				<hr>
				<div class="table-responsive">
					<table class="table text-left">
						<thead>
							<tr>
								<th>ID</th>
								<th>NAME</th>
								<th>DESCRIPTION</th>
								<th>DATE CREATE</th>
								<th>STATUS</th>
								<th>ACTION</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach var="task" items="${tasks}">
							<tr>
								<td>${task.id}</td>
								<td>${task.name}</td>
								<td>${task.description}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
								<td>${task.finished}</td>
								<td>
									<a href="update-task?id=${task.id}">Update</a>
									|
									<a href="delete-task?id=${task.id}">Delete</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>												
		</c:when>
		
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center" id="managekDiv">
				<h3>Manage Task</h3>
				<form class="form-horizontal" action="save-task" method="POST">
					<div class="form-group">
						<label class="control-labe col-md-3">Name</label>
						<input type="hidden" name="id" value="${task.id}">
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" value="${task.name}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-labe col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" value="${task.description}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-labe col-md-3">Status</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="finished	" value="1">
							<div class="col-sm-1 text-left">Yes</div>
							<input type="radio" class="col-sm-1" name="finished	" value="0" checked>
							<div class="col-sm-1 text-left">No</div>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-info" value="Submit">
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="asets/js/bootstrap.min.js"></script>
</body>
</html>