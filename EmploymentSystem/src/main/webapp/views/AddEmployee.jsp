<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information Form</title>
    <!-- Add your CSS styles or link to external stylesheets here -->
</head>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input {
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
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        div {
            margin-top: 16px;
        }

        div[style^="color: green;"] {
            color: green;
        }

        div[style^="color: red;"] {
            color: red;
        }
    </style>
<body>

<h1>Employee Information Form</h1>

<form action="addEmployee" method="post" modelAttribute="emp">
	
    <!-- First Name -->
    <label for="firstName">First Name:</label>
    <input type="text" id="fName" name="fName" required><br>

    <!-- Middle Name -->
    <label for="middleName">Middle Name:</label>
    <input type="text" id="mName" name="mName"><br>

    <!-- Last Name -->
    <label for="lastName">Last Name:</label>
    <input type="text" id="lName" name="lName" required><br>

    <!-- Birthdate -->
     <label for="birthdate">Birthdate:</label>
    <input type="date" id="dob" name="dob" required><br>

    <!-- Position -->
    <label for="position">Position:</label>
    <input type="text" id="postion" name="postion" required><br>

    <!-- Submit Button -->
    <input type="submit" value="Submit">
</form>
<!-- Display success message -->
    <c:if test="${not empty successMessage}">
        <div style="color: green;">${successMessage}</div>
    </c:if>

    <!-- Display error message -->
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">${errorMessage}</div>
    </c:if>

</body>
</html>
