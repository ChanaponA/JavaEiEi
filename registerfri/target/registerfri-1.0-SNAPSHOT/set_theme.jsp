<%--
  Created by IntelliJ IDEA.
  User: potae
  Date: 10/30/2023
  Time: 12:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Select Your theme</title>
</head>
<body style="margin-left: 100px;background-color: ${cookie.bg_color_cookie.value}">
<h2>Select Your theme</h2>
<form action="set-theme" method="post">
  <p><input type="radio" name="bgColor" value="lightgreen">
    <button style="background-color: lightgreen">lightgreen</button></p>

  <p><input type="radio" name="bgColor" value="deeppink">
    <button style="background-color: deeppink">deeppink</button></p>

  <p><input type="radio" name="bgColor" value="orangered">
    <button style="background-color: orangered">orangered</button></p>

  <p><input type="radio" name="bgColor" value="darkblue">
    <button style="background-color: darkblue;color: white">darkblue</button></p>

  <hr>
  <input type="submit" value="OK" style="background-color: lightgray">
</form>
</body>
</html>

