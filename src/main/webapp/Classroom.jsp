<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="com.illusion.classroom.dto.Batch" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Classroom Management</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #333;
      }

      .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
      }

      .class-card {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
        padding: 20px;
        text-align: center;
        transition: transform 0.3s ease-in-out;
      }

      .class-card:hover {
        transform: scale(1.05);
      }

      .class-card h3 {
        margin-top: 0;
      }

      .add-class-button {
        padding: 10px 20px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: #4a8bdf;
        color: #fff;
        margin-top: 20px;
      }

      .add-class-button:hover {
        background-color: #0056b3;
      }
    </style>
 </head>
 <body>
    <h2>Classes</h2>
   <div class="card-container">
      <%-- Example of embedding Java code to generate class cards dynamically --%>
      <%
        // This is a placeholder for the actual data retrieval logic
        List <Batch> classes = (List<Batch>)session.getAttribute("batch");// Replace with actual method to fetch classes
        %>
       <%if(classes !=null) { %>
   
       <%  for (Batch aClass : classes) {
      %>
        <div class="class-card">
          <h3><%= aClass.getBatchcode()%></h3>
          <p><%= aClass.getTrainer()%></p>
        </div>
      <% } }%>
    </div>
    <button class="add-class-button" onclick="window.location.href='AddBatch.jsp'">Create New Class</button>
    <script>
      function addNewClass() {
        // Implement the logic to add a new class
        // This could involve submitting a form or making an AJAX request
        alert('Add new class functionality not implemented.');
      }
    </script>
 </body>
</html>
