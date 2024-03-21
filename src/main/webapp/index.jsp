<jsp:useBean id="gameBean" scope="session" class="game.GameBean" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tic Tac Toe</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f2f2f2;
        }
        h1 {
            color: #333;
        }
        form {
            margin-top: 50px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-bottom: 10px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Tic Tac Toe</h1>
    <form action="entryServlet" method="post">
        <input type="submit" name="User" value="El usuario comienza"><br/>
        <input type="submit" name="Computer" value="El computador comienza">
    </form>
</body>
</html>
