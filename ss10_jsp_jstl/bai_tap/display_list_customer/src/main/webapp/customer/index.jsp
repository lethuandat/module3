<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 26/06/2022
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Customer Manager</title>
  </head>
  <body>

  <h2>Danh sách khách hàng</h2>
 <div align="center">
     <table border="1" cellpadding="5">
         <caption>
             <h2>List of customer</h2>
         </caption>
         <tr>
             <th>Tên</th>
             <th>Ngày sinh</th>
             <th>Địa chỉ</th>
             <th>Ảnh</th>
         </tr>

         <c:forEach var="customer" items="${customerList}">
             <tr>
                <td>
                    <c:out value="${customer.getId()}"></c:out>
                </td>
                 <td>
                     <c:out value="${customer.getName()}"></c:out>
                 </td>
                 <td>
                     <c:out value="${customer.getDate()}"></c:out>
                 </td>
                 <td>
                     <c:out value="${customer.getAddress()}"></c:out>
                 </td>
             </tr>
         </c:forEach>

     </table>
 </div>
  </body>
</html>
