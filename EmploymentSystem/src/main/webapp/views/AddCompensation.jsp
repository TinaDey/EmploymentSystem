<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Compensation Form</title>
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
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required>
    <br>

     <label for="selectedMonthYear">Date:</label>
     <input type="month" id="selectedMonthYear" name="selectedMonthYear" required>
    <br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
