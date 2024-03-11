<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Compensation Form</title>
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
            background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);
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
            text-align: center;
            background:transparent;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        select,
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="number"] {
            -moz-appearance: textfield;
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
    </style>
</head>
<body>

<h2>Compensation Form</h2>

<form action="/addComp" method="post" modeAttribute="comp">
    <label for="type">Type of Compensation:</label>
    <select id="type" name="type">
        <option value="Salary">Salary</option>
        <option value="Bonus">Bonus</option>
        <option value="Commission">Commission</option>
        <option value="Allowance">Allowance</option>
        <option value="Adjustment">Adjustment</option>
    </select>
    <br>

    <label for="amount">Amount:</label>
    <input type="number" id="amount" name="amount" step="0.01" required>
    <br>
	<input type="hidden"  name="id" value="${employeeId}" >
	<input type="hidden"  name="compId" value="${compId}" >
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required>
    <br>

     <label for="selectedMonthYear">Date:</label>
     <input type="month" id="selectedMonthYear" name="selectedMonthYear" required>
    <br>

    <input type="submit" value="Submit">
</form>

    <c:if test="${not empty successMessage}">
        <div style="color: green;">${successMessage}</div>
    </c:if>

    <!-- Display error message -->
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">${errorMessage}</div>
    </c:if>

</body>
</html>
