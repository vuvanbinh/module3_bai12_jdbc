<%--
  Created by IntelliJ IDEA.
  User: binhhd1996
  Date: 2021/08/24
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a><br><br>
        <a href="/users?action=short">Short by name</a>
    </h2>
    <h2>List of Users</h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <form action="/users?action=searchCountry" method="post">
            <input type="text" name="country" placeholder="Enter the country to search" style="width: 200px;margin-left: -199px">
            <input type="submit" value="Search">
        </form>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
