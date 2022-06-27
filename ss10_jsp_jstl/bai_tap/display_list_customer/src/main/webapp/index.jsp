<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 26/06/2022
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Customer List</title>
  </head>
  <body>
  <%
      String[] customerList = new String[5];
      customerList[0] = Arrays.toString(new String[]{"Mai Văn Hoàn", "20/08/1983", "Hà Nội", "img"});
  %>
  <h2>Danh sách khách hàng</h2>
  <table>
      <tr>
          <th>Tên</th>
          <th>Ngày sinh</th>
          <th>Địa chỉ</th>
          <th>Ảnh</th>
      </tr>
  </table>
  </body>
</html>
