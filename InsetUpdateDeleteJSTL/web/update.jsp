<%-- 
    Document   : update
    Created on : 13-Oct-2019, 11:12:45
    Author     : KHALID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%> 
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/loginjdbc"
                           user="root" password="7487"/>
        <sql:query dataSource="${dbsource}" var="result">
            select * from product where id=?;
            <sql:param value="${param.id}"/>
        </sql:query>
        <form action="updatedb.jsp" method="post"> 
            <table border="0" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="id"/>
                        <input type="text"  value="${row.pname}" name="pname"/></td>
                        <td><input type="text" value="${row.qty}" name="qty"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="index.jsp">Go Home</a>
        </form>
    </body>
</html>
