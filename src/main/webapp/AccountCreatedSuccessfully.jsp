<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Created Successfully</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
        text-align: center;
        animation: fadeIn 1s ease-out;
    }

    button {
        background-color: #28a745; /* Green background for the button */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 150px;
        animation: fadeIn 1s ease-out;
    }

    button:hover {
        background-color: #218838; /* Darker green on hover */
    }

    /* Animation Keyframes */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>
<body>
    <h1>Account Created Successfully</h1>
    <button onclick="window.location.href='Login.jsp'">Login</button>
</body>
</html>
