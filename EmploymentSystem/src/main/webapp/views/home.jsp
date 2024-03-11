<!DOCTYPE html>
<html>
<head>
    <title>Employment System</title>
    <!-- Add your CSS styles or link to external stylesheets here -->
    <style>
    body {
    font-family: Arial, sans-serif;
 background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);
    margin: 0;
    padding: 0;
}

h1 {
    color: #333;
    text-align: center;
}

form {
    text-align: center;
    margin-top: 20px;
}

button {
    background-color: #4285f4;
    color: #fff;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    margin-right: 10px;
}

button:hover {
    background-color: #3367d6;
}
    
    </style>
</head>
<body>
<h1>Employment System</h1>
<form action="/addEmployee" method="get">
<button type="submit">Add Employee</button>
</form>
<form action="/searchEmployees" method="get">
<button type="submit">Search Employee</button>
</form>


</body>
</html>
