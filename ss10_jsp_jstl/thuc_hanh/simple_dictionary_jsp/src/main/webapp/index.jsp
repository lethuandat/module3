<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 26/06/2022
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
  <h2>Vietnamese Dictionary</h2>
  <form action="dictionary.jsp" method="post">
    <label>
      <input type="text" name="search" placeholder="Enter your word: "/>
    </label>
    <input type = "submit" id = "submit" value = "Search"/>
  </form>
  </body>
</html>
