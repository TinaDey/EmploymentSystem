<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Compensation</title>
</head>
<body>

	<h2>View Compensation</h2>
	<%
	out.println();
	%>
	<form action="/viewComp" method="post">
		<label for="startDate">Start Date:</label> <input type="month"
			id="startDate" name="startDate" required> <br> <label
			for="endDate">End Date:</label> <input type="month" id="endDate"
			name="endDate" required> <br> <input type="submit"
			value="Submit">
	</form>

	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>Type</th>
				<th>Amount</th>
				<th>Description</th>
				<th>Selected MonthYear</th>
				<!-- Add additional columns as needed -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="compensation" items="${dataComp}">
				<tr>
					<td>${compensation.id}</td>
					<td>${compensation.type}</td>
					<td>${compensation.amount}</td>
					<td>${compensation.description}</td>
					<td>${compensation.selectedMonthYear}</td>
					<!-- Add additional cells for other fields -->
					<td>
						<form action="/editComp" method="get">
							<input type="hidden" name="id" value="${compensation.id}">
							<button type="submit">Edit Compensation</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
