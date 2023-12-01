<%@page import="com.hello.BoardDAO.BoardDAO, com.hello.BoardBeans.BoardVO" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>게시글 상세정보</title>
    <link rel="stylesheet" href="board.css">

</head>
<body>


<h1> 게시글 정보</h1>
<table>
    <tr>
        <td>Title</td>
        <td>${u.title}</td>
    </tr>
    <tr>
        <td>Writer</td>
        <td>${u.writer}</td>
    </tr>
    <tr>
        <td>Content</td>
        <td>${u.content}</td>
    </tr>
    <tr>
        <td>Category</td>
        <td>${u.category}</td>
    </tr>
</table>


<button type="button" onclick="history.back()"> 뒤로가기</button>
<button type="button" onclick="location.href='../editform/${u.seq}'"> 수정하기</button>

</body>
</html>
