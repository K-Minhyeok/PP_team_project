<%--
  Created by IntelliJ IDEA.
  User: 김민혁
  Date: 2023-12-01
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO"%>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<head>
    <title>Title</title>
</head>
<body>

<h2>Section title</h2>

<div class="table-responsive">
    <table id ="list" class="table table-striped table-sm">
        <thead>
        <tr>
            <th>#</th>
            <th>title</th>
            <th>writer</th>
            <th>content</th>
            <th>category</th>
            <th>option1</th>
            <th>option2</th>
            <th>option3</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u" >
            <tr>
                <td>${u.seq}</td>
                <td>${u.title}</td>
                <td>${u.writer}</td>
                <td>${u.content}</td>
                <td>${u.category}</td>
                <td><a href="view.jsp?id=${u.seq}">View</a> </td>
                <td><a href="editform.jsp?id=${u.seq}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
