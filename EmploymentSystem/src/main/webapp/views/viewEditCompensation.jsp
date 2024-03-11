<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Compensation</title>
</head>
<body>

<h2>Edit Compensation </h2>

<form action="/editComp" method="post" modeAttribute="comp">

    <label for="amount">Amount:</label>
    <input type="number" id="amount" name="amount" step="0.01" required>
    <br>
	<input type="hidden"  name="id" value="${employeeId}" >
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required>
    <br>


    <input type="submit" value="Submit">
</form>

</body>
</html>
