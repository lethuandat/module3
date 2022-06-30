<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
    <h2>
        <a href="/users?action=search">Search by name</a>
    </h2>
    <form action="/users" method="get">
        Sort by name: <input type="submit" name="action" value="sort">
    </form>
</center>
<div align="center">
    <caption><h2>List of Users</h2></caption>
    <table class="table" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <c:forEach items="${listCountry}" var="country">
                <c:if test="${country.id == user.countryId}">
                    <tr>
                        <td><c:out value="${user.id}"/></td>
                        <td><c:out value="${user.name}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><c:out value="${country.name}"/></td>
                        <td>
                            <a href="/users?action=edit&id=${user.id}">Edit</a>
                            <a href="/users?action=delete&id=${user.id}">Delete</a>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:forEach>
    </table>
</div>
</body>
</html>