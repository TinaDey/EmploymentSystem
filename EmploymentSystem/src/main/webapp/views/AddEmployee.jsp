<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information Form</title>
    <!-- Add your CSS styles or link to external stylesheets here -->
</head>
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
    <!--  <label for="birthdate">Birthdate:</label>
    <input type="date" id="birthdate" name="birthdate" ><br>-->

    <!-- Position -->
    <label for="position">Position:</label>
    <input type="text" id="postion" name="postion" required><br>

    <!-- Submit Button -->
    <input type="submit" value="Submit">
</form>

</body>
</html>
