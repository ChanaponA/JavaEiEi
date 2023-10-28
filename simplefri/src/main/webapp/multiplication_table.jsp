<%--
  Created by IntelliJ IDEA.
  User: potae
  Date: 10/22/2023
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MultiplicationTable</title>
    <style>
        table {
            border-collapse: collapse;
            width: 40%;
            margin: 0 auto;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        /*td {*/
        /*    background-color: #f2f2f2;*/
        /*}*/

        h3 {
            color: red;
        }

        /* Style the table header row */
        th {
            background-color: hotpink;
            color: black;
        }
    </style>

</head>
<body>
<h3>MultiplicationTable::</h3>
<hr>
<c:if test="${error == null}">
    <table style="width: 40%">
        <tr>
            <td colspan="5" style="background: white">MT for ${param.number}</td>
        </tr>
        <c:forEach begin="1" end="12" var="n">
            <c:choose>
                <c:when test="${n%3==1}">
                    <c:set var="bg" scope="page" value="pink"/>
                </c:when>
                <c:when test="${n%3==2}">
                    <c:set var="bg" scope="page" value="hotpink"/>
                </c:when>
                <c:otherwise>
                    <c:set var="bg" scope="page" value="deeppink"/>
                </c:otherwise>
            </c:choose>
            <tr style="background-color: ${bg}">
                <td>${param.number} </td>
                <td> x</td>
                <td>${n} </td>
                <td> =</td>
                <td> ${n * param.number} </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${error != null}">
<h3 style="color: red">
    Error: ${requestScope.error} (${param.number !=null || param.number=='' ? param.number : "Null/Empty"})
</h3
></c:if>
</body>
</html>
