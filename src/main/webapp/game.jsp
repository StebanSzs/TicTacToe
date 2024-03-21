<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="game.GameBean.GameState" %>
<%@page import="game.Cell" %>
<%@page import="game.Line" %>

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
        }
        h1 {
            color: #333;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            border: 3px solid #333;
        }
        td {
            width: 100px;
            height: 100px;
            border: 3px solid #333;
            padding: 0;
        }
        img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        h2 {
            color: green;
        }
        form {
            margin-top: 20px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Tic Tac Toe</h1>
    <table>
        <c:forEach var="line" items="${gameBean.gridLines}">
            <tr>
                <c:forEach var="cell" items="${gameBean.getGridStatus(line)}">
                    <td>
                        <c:choose>
                            <c:when test="${cell.state == 'X'}">
                                <img src="img/state_x.png" alt="X"/>
                            </c:when>
                            <c:when test="${cell.state == 'O'}">
                                <img src="img/state_o.png" alt="O"/>
                            </c:when>
                            <c:otherwise>
                                <c:if test="${winner == null}">
                                    <a href="gameServlet?Line=${cell.line}&Col=${cell.col}">
                                </c:if>
                                    <img src="img/state_null.png" alt="null"/>
                                <c:if test="${winner == null}">
                                    </a>
                                </c:if>
                            </c:otherwise>
                        </c:choose>
                    </td>    
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${winner != null}">
        <h2>${winner} GANO!</h2>
        <form action="index.jsp" method="post">
            <input type="submit" name="Replay" value="Jugar otra vez"><br/>
        </form>
    </c:if>
</body>
</html>
