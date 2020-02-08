<%--
  Created by IntelliJ IDEA.
  User: xXx
  Date: 08.02.2020
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
<h1>Testing Jsp</h1>
<p>
    <%@ page import="logic.TestClass,java.util.Date" %>
    <%
        Date now = new Date();
        String someString = "Текущая дата: " + now;
    %>
    <%= someString  %>
</p>
<p>
    <% out.print("Hello world!"); %>
    <% for (int i = 0; i < 10; i++) {
        out.print("<p>Hello: " + i + "</p>");
    }
    %>
    <%= new TestClass().getInfo() %>
</p>
<p>
    <%
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
    %>
    <%= "Hello, " + name + " " + surname + "!"%>
</p>
</body>
</html>
