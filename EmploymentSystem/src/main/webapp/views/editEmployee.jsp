
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Edit Employee</title>
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
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        div {
            margin-top: 10px;
        }

        div.success {
            color: green;
        }

        div.error {
            color: red;
        }
    </style>
</head>
<body>

<form action="/editEmployees" method="post" modelAttribute="editEmp">
<input type="hidden" name="id" value="${editEmp.id}" />
    <label for="FName">First Name:</label>
    <input type="text" id="firstname" name="firstname" value="${editEmp.firstname}" required><br>

    <label for="MName">Middle Name:</label>
    <input type="text" id="middlename" name="middlename" value="${editEmp.middlename}" required><br>

    <label for="LName">Last Name:</label>
    <input type="text" id="lastname" name="lastname" value="${editEmp.lastname}" required><br>

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
