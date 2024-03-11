<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Compensation</title>
 <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="month"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tbody tr:hover {
            background-color: #f5f5f5;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
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
							<input type="hidden" name="id" value="${compensation.comid}">
							<button type="submit">Edit Compensation</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
