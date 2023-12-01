<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>List</title>
</head>
<body>

<img src="../img/myname.jpg" width="300"/>

<h1>${title}</h1>

<c:forEach var="name" items="${classList}" varStatus="status">
    <p> ${status.count}: ${name}</p>
</c:forEach>

</body>
</html>
