<%@page import="com.illusion.classroom.dto.AddedBatchDetails"%>
<%@page import="java.util.List"%>
<%@ page import="com.illusion.classroom.dto.AddedBatchDetails" %>
<%@ page import="com.illusion.classroom.dto.Login" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Classroom List</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .candidate-name {
            position: absolute;
            left: 20px;
            top: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .add-classroom-button {
            position: absolute;
            right: 20px;
            top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            transform: scale(1);
        }

        .add-classroom-button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .classroom-list {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            gap: 20px;
            padding: 0 20px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            width: 30%; /* Reduced width */
            margin-bottom: 20px;
            background-color: #e9ecef;
            border-radius: 10px;
            overflow: hidden;
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            transform: scale(1.02);
        }

        .container {
            padding: 20px;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 28px;
        }

        h4 {
            color: #666;
            margin-bottom: 10px;
            font-size: 20px;
            text-align: center;
        }

        /* Loading Animation */
        .loading {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .spinner {
            border: 16px solid #f3f3f3;
            border-top: 16px solid #3498db;
            border-radius: 50%;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="loading">
        <div class="spinner"></div>
    </div>
    <script>
        window.onload = function() {
            document.querySelector('.loading').style.display = 'none';
        };
    </script>
    <% String name=(String) session.getAttribute("name"); %>
    <div class="candidate-name">Candidate Name:<%= " "+name%> </div>
    <button class="add-classroom-button" onclick="location.href='AddNewClassroom.jsp'">Add New Classroom</button>
    <div class="classroom-list">
        <h2>Classroom List</h2>
        <%
        List<AddedBatchDetails> classrooms = (List<AddedBatchDetails>)session.getAttribute("addbatch");
        if (classrooms != null) {
            for (AddedBatchDetails classroom : classrooms) {
        %>
                <div class="card">
                    <div class="container">
                        <h4><%= classroom.getBatchcode()%></h4>
                    </div>
                </div>
        <%
            }
        } else {
        %>
            <p>No classrooms found.</p>
        <%
        }
        %>
    </div>
</body>
</html>
