<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Search</title>
<style>
/* Add any necessary styling here */
.hidden {
	display: none;
}
</style>
</head>
<body>
	<h1>Search Employees</h1>
	<br />
	<form action="/searchEmployees" method="post"
		modelAttribute="employeeSearchForm">
		<label> First Name <input type="checkbox" name="firstName"
			onchange="toggleInput('fName')">
		</label> <input type="text" name="fName" id="fName" class="hidden"> <label>
			Last Name <input type="checkbox" name="lastName"
			onchange="toggleInput('lName')">
		</label> <input type="text" name="lName" id="lName" class="hidden"> <label>
			Position <input type="checkbox" name="position"
			onchange="toggleInput('position')">
		</label> <input type="text" name="postion" id="position" class="hidden">

		<button type="submit">Search</button>
		<button type="button" onclick="clearSearch()">Clear</button>
	</form>
	<div id="searchResults">
		<!-- Display search results here -->
		<!--   <p>${employees}</p>-->
		<c:choose>
			<c:when test="${not empty employees}">
				<table border="1">
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Middle Name</th>
						<th>Last Name</th>
						<th>Position</th>
						<th>Date of Birth</th>
					</tr>
					<c:forEach var="employee" items="${employees}">
						<tr>
							<td>${employee.id}</td>
							<td>${employee.FName}</td>
							<td>${employee.MName}</td>
							<td>${employee.LName}</td>
							<td>${employee.postion}</td>
							<td>${employee.dob}</td>
							<td>
								<form action="/viewEditEmployees" method="post"
									modelAttribute="editEmp">
									<input type="hidden" name="id" value="${employee.id}" />
									<input type="hidden" name="fName" value="${employee.FName}" />
									<input type="hidden" name="mName" value="${employee.MName}" />
									<input type="hidden" name="lName" value="${employee.LName}" />
									<input type="hidden" name="postion" value="${employee.postion}" />
									<input type="hidden" name="dob" value="${employee.dob}" />
									<button type="submit">Edit Employee</button>
								</form>
								<form action="/addComp" method="get">
								<input type="hidden" name="id" value="${employee.id}" />
									<button type="submit">Add Compensation</button>									
								</form>
								<form action="/viewComp" method="get">
									<button type="submit">View Compensation</button>									
								</form>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>
				<h2>No data found</h2>
			</c:otherwise>
		</c:choose>
	</div>

	<script>
        function toggleInput(inputName) {
            const input = document.getElementById(inputName);
            input.classList.toggle('hidden', !input.classList.contains('hidden'));
        }

        function clearSearch() {
            // Clear all checkboxes and hide corresponding text inputs
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(checkbox => {
                checkbox.checked = false;
                toggleInput(checkbox.name);
            });
        }
    </script>

</body>
</html>
