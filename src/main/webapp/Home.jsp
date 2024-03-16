<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Illusion Classroom</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .homepage-container {
            text-align: center;
        }

        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
        }

        .buttons-container {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-button {
            background-color: #007bff;
            color: #fff;
        }

        .signup-button {
            background-color: #28a745;
            color: #fff;
        }

        button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="homepage-container">
        <h1>Illusion Classroom</h1>
        <div class="buttons-container">
            <button class="login-button"onclick="window.location.href='Login.jsp'">Login</button>
            <button class="signup-button"onclick="window.location.href='Signup.jsp'">Signup</button>
             <button class="signup-button"onclick="window.location.href='LoginAdmin.jsp'">Login as Admin</button>
        </div>
    </div>
</body>
</html>
