<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Classroom Information</title>
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

        form {
            background-color: #d3d3d3; /* Light grey background for the form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 400px;
            max-width: 100%;
            animation: fadeIn 1s ease-out;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333; /* Darker text for labels */
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div>
        <h1>Classroom Information</h1>
        <hr>
        <form action="addbatch" method="POST">
            <div>
                <label><strong>Classroom Code:</strong></label> 
                <input name="batchcode" type="text" required>
            </div>
            <hr>
            <div>
                <label><strong>Trainer name:</strong></label>
                <input name="trainer" type="text" required>
            </div>
            <div>
                <label><strong>Subject</strong></label>
                <input name="subject" type="text" required>
            </div>
            <hr>
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
