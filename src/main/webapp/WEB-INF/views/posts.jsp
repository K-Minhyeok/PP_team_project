<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost?id='+id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
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
    <c:forEach items="${list}" var="u">
    <tr>
        <td>${u.seq}</td>
        <td>${u.title}</td>
        <td>${u.writer}</td>
        <td>${u.content}</td>
        <td>${u.category}</td>
        <td><a href="view/${u.seq}">View</a></td>
        <td><a href="editform/${u.seq}">Edit</a></td>
        <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
    </tr>
    </c:forEach>

</table>
<br/><a href="addpostform">Add New Post</a>
</body>
</html>