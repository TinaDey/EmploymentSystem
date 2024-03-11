
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Edit Employee</title>
</head>
<body>

<form action="/editEmployees" method="post" modelAttribute="editEmp">
<input type="hidden" name="id" value="${editEmp.id}" />
    <label for="FName">First Name:</label>
    <input type="text" id="FName" name="fName" value="${editEmp.FName}" required><br>

    <label for="MName">Middle Name:</label>
    <input type="text" id="MName" name="mName" value="${editEmp.MName}" required><br>

    <label for="LName">Last Name:</label>
    <input type="text" id="LName" name="lName" value="${editEmp.LName}" required><br>

    <label for="position">Position:</label>
    <input type="text" id="position" name="postion" value="${editEmp.postion}" required><br>

    <label for="dob">Date of Birth:</label>
    <input type="text" id="dob" name="dob" value="${editEmp.dob}" required><br>

    <input type="submit" value="Update">
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
